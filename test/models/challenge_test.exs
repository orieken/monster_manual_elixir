defmodule MonstersManual.ChallengeTest do
  use MonstersManual.ModelCase

  alias MonstersManual.Challenge

  @valid_attrs %{experience: 42, rating: 42, proficiency: "+5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Challenge.changeset(%Challenge{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Challenge.changeset(%Challenge{}, @invalid_attrs)
    refute changeset.valid?
  end
end
