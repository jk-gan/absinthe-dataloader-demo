defmodule DemoWeb.PostResolver do
  alias Demo.Blog

  def all(_root, _args, _info) do
    {:ok, Blog.list_posts()}
  end
end
