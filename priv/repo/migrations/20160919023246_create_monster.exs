defmodule MonstersManual.Repo.Migrations.CreateMonster do
  use Ecto.Migration

  def change do
    create table(:monsters) do
      add :name, :string
      add :type, :string
      add :ac, :integer

          #attributes
      add :str, :integer
      add :str_modifier, :string
      add :dex, :integer
      add :dex_modifier, :string
      add :con, :integer
      add :con_modifier, :string
      add :int, :integer
      add :int_modifier, :string
      add :wis, :integer
      add :wis_modifier, :string
      add :cha, :integer
      add :cha_modifier, :string

      timestamps()
    end

  end
end
