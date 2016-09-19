defmodule MonstersManual.MonsterTest do
  use MonstersManual.ModelCase
  alias MonstersManual.Monster

  @valid_attrs %{
      name: "Aarakocra",
      type: "humanoid",
      average_hit_points: 13,
      hit_point_dice: "3d8",
      size: "medium",
      alignment: "neutral good",
      ac: 12,
      xp: 50,
      str: 17,
      str_modifier: "+3",
      dex: 11,
      dex_modifier: "+0",
      con: 13,
      con_modifier: "+1",
      int: 1,
      int_modifier: "-5",
      wis: 13,
      wis_modifier: "+1",
      cha: 6,
      cha_modifier: "-2"
  }
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Monster.changeset(%Monster{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Monster.changeset(%Monster{}, @invalid_attrs)
    refute changeset.valid?
  end
end
