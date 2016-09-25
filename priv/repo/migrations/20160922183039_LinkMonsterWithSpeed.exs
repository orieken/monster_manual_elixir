defmodule MonstersManual.Repo.Migrations.LinkMonsterWithSpeed do
  use Ecto.Migration

  def change do
    alter table(:speeds) do
      add :monster_id, :integer
    end
    create unique_index(:speeds, [:monster_id], monster_id: :monster_id)
  end
end
