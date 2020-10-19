defmodule DemoWeb.ReaderResolver do
  alias Demo.Blog

  def get_reader(%{id: id}, _args, _info) do
    {:ok, Blog.get_reader(id)}
  end
end
