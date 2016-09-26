defmodule MonstersManual.Alignment do
  use MonstersManual.Web, :model

  schema "alignments" do
    field :name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end

  defimpl Poison.Encoder, for: MonstersManual.Alignment do
    def encode(alignment, _options) do
      alignment
      |> Map.from_struct
      |> Map.drop([:__meta__, :__struct__, :monster, :monster_id])
      |> Poison.encode!
    end
  end
end
