defmodule Demo.Blog.Reader do
  use Ecto.Schema
  import Ecto.Changeset

  schema "readers" do
    field :email, :string
    field :name, :string

    has_many :reviews, Demo.Blog.Review

    timestamps()
  end

  @doc false
  def changeset(reader, attrs) do
    reader
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
