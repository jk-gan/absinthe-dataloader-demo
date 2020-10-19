defmodule Demo.Repo.Migrations.UpdateReviewsTable do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      add :reader_id, references(:readers), null: false
    end
  end
end
