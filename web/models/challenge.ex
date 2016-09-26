defmodule MonstersManual.Challenge do
  use MonstersManual.Web, :model

  schema "challenges" do
    field :rating, :float
    field :experience, :integer
    field :proficiency, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:rating, :experience, :proficiency])
    |> validate_required([:rating, :experience, :proficiency])
  end

  defimpl Poison.Encoder, for: MonstersManual.Challenge do
    def encode(challenge, _options) do
      challenge
      |> Map.from_struct
      |> Map.drop([:__meta__, :__struct__, :monster, :monster_id])
      |> Poison.encode!
    end
  end
end
