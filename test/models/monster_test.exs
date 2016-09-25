defmodule MonstersManual.MonsterTest do
  use MonstersManual.ModelCase
  alias MonstersManual.Monster

  @valid_attrs %{
      name: Faker.Team.creature,
      type: Faker.Company.buzzword,
      ac: 12,
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
      cha_modifier: "-2",
      challenge: %{experience: 42, rating: 42, proficiency: "+5"},
      size: %{average_hit_point_per_die: 42, hit_point_dice: "some content", size: "some content", space: "some content"},
      alignment: %{name: "some content"},
      actions: %{ammunition: "some content", legendary_action: "some content", legendary_lair_action: "some content", limited_usage: "some content", multiattack: "some content", name: "some content", reaction: "some content", regional_effect: "some content"},
      speeds: %{burrow: "some content", climb: "some content", fly: "some content", swim: "some content", walking: "some content"}

  }
  @invalid_attrs %{challenge: %{}, size: %{}, alignment: %{}, actions: %{}}

  test "changeset with valid attributes" do
    changeset = Monster.changeset(%Monster{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Monster.changeset(%Monster{}, @invalid_attrs)
    refute changeset.valid?
  end
end