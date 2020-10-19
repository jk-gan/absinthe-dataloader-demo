defmodule DemoWeb.Schema do
  use Absinthe.Schema

  import Absinthe.Resolution.Helpers

  alias DemoWeb.PostResolver
  # alias DemoWeb.ReviewResolver
  # alias DemoWeb.ReaderResolver
  alias Demo.Repo
  alias Demo.Blog.Review
  alias Demo.Blog.Reader

  @impl true
  def context(ctx) do
    loader = 
      Dataloader.new()
      |> Dataloader.add_source(Reader, Dataloader.Ecto.new(Repo))
      |> Dataloader.add_source(Review, Dataloader.Ecto.new(Repo))

    Map.put(ctx, :loader, loader)
  end

  @impl true
  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end

  object :review do
    field :id, non_null(:id)
    field :star, non_null(:integer)
    field :comment, non_null(:string)
    field :reader, :reader, resolve: dataloader(Reader)
    # field :reader, :reader do
    #   resolve(&ReaderResolver.get_reader/3)
    # end
  end

  object :reader do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :email, non_null(:string)
  end

  object :post do
    field :id, non_null(:id)
    field :title, non_null(:string)
    field :body, non_null(:string)
    field :reviews, list_of(:review), resolve: dataloader(Review)
    # field :reviews, list_of(:review) do
    #   resolve(&ReviewResolver.get_reviews/3)
    # end
  end

  query do
    # this is the query entry point to our app
    @desc "Get all blog posts"
    field :posts, list_of(:post) do
      resolve(&PostResolver.all/3)
    end
  end
end
