defmodule DemoWeb.ReviewResolver do
  alias Demo.Blog

  def get_reviews(%{id: id}, _args, _info) do
    {:ok, Blog.list_reviews_for_post(id)}
  end
end
