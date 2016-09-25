defmodule MonstersManual.SpeedTest do
  use MonstersManual.ModelCase

  alias MonstersManual.Speed

  @valid_attrs %{burrow: "some content", climb: "some content", fly: "some content", swim: "some content", walking: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Speed.changeset(%Speed{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Speed.changeset(%Speed{}, @invalid_attrs)
    refute changeset.valid?
  end
end
