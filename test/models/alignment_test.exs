defmodule MonstersManual.AlignmentTest do
  use MonstersManual.ModelCase

  alias MonstersManual.Alignment

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Alignment.changeset(%Alignment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Alignment.changeset(%Alignment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
