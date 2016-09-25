defmodule MonstersManual.Repo.Migrations.CreateChallenge do
  use Ecto.Migration

  def change do
    create table(:challenges) do
      add :rating, :float
      add :experience, :integer
      add :proficiency, :string

      timestamps()
    end

  end
end
