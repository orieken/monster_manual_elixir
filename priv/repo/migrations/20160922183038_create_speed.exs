defmodule MonstersManual.Repo.Migrations.CreateSpeed do
  use Ecto.Migration

  def change do
    create table(:speeds) do
      add :walking, :string
      add :burrow, :string
      add :climb, :string
      add :fly, :string
      add :swim, :string

      timestamps()
    end
  end
end
