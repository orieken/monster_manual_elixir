defmodule MonstersManual.Repo.Migrations.CreateSize do
  use Ecto.Migration

  def change do
    create table(:sizes) do
      add :size, :string
      add :hit_point_dice, :string
      add :space, :string
      add :average_hit_point_per_die, :integer

      timestamps()
    end

  end
end
