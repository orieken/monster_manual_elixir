defmodule MonstersManual.Repo.Migrations.CreateAction do
  use Ecto.Migration

  def change do
    create table(:actions) do
      add :name, :string
      add :legendary_action, :string
      add :reaction, :string
      add :limited_usage, :string
      add :multiattack, :string
      add :ammunition, :string
      add :legendary_lair_action, :string
      add :regional_effect, :string

      timestamps()
    end

  end
end
