defmodule MonstersManual.SizeTest do
  use MonstersManual.ModelCase

  alias MonstersManual.Size

  @valid_attrs %{average_hit_point_per_die: 42, hit_point_dice: "some content", size: "some content", space: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Size.changeset(%Size{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Size.changeset(%Size{}, @invalid_attrs)
    refute changeset.valid?
  end
end
