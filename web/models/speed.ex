defmodule MonstersManual.Speed do
  use MonstersManual.Web, :model

  schema "speeds" do
    field :walking, :string
    field :burrow, :string
    field :climb, :string
    field :fly, :string
    field :swim, :string

    belongs_to :monster, Monster

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:walking, :burrow, :climb, :fly, :swim])
    |> validate_required([:walking, :burrow, :climb, :fly, :swim])
  end

  defimpl Poison.Encoder, for: MonstersManual.Speed do
    def encode(speed, _options) do
      speed
      |> Map.from_struct
      |> Map.drop([:__meta__, :__struct__, :monster])
      |> Poison.encode!
    end
  end
end
