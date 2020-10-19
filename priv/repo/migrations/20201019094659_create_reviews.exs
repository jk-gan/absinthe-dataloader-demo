defmodule Demo.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :star, :integer
      add :comment, :text
      add :post_id, references(:posts, on_delete: :nothing)

      timestamps()
    end

    create index(:reviews, [:post_id])
  end
end
