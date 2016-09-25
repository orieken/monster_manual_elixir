defmodule MonstersManual.ActionTest do
  use MonstersManual.ModelCase

  alias MonstersManual.Action

  @valid_attrs %{ammunition: "some content", legendary_action: "some content", legendary_lair_action: "some content", limited_usage: "some content", multiattack: "some content", name: "some content", reaction: "some content", regional_effect: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Action.changeset(%Action{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Action.changeset(%Action{}, @invalid_attrs)
    refute changeset.valid?
  end
end
