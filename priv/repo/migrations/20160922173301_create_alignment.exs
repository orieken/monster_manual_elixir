defmodule MonstersManual.Repo.Migrations.CreateAlignment do
  use Ecto.Migration

  def change do
    create table(:alignments) do
      add :name, :string

      timestamps()
    end

  end
end
