defmodule MonstersManual.Repo.Migrations.LinkMonsterWithChallenges do
  use Ecto.Migration

  def change do
    alter table(:monsters) do
      add :challenge_id, references(:challenges)
    end
  end
end
