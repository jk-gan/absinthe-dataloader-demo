defmodule Demo.Blog.Review do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reviews" do
    field :comment, :string
    field :star, :integer

    belongs_to :reader, Demo.Blog.Reader
    belongs_to :post, Demo.Blog.Post

    timestamps()
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:star, :comment])
    |> validate_required([:star, :comment])
  end
end
