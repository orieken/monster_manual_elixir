defmodule MonstersManual.Repo.Migrations.LinkMonsterWithAlignment do
  use Ecto.Migration

  def change do
    alter table(:monsters) do
      add :alignment_id, references(:alignments)
    end
  end
end
