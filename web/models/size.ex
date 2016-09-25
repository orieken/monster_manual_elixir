defmodule MonstersManual.Size do
  use MonstersManual.Web, :model

  schema "sizes" do
    field :size, :string
    field :hit_point_dice, :string
    field :space, :string
    field :average_hit_point_per_die, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:size, :hit_point_dice, :space, :average_hit_point_per_die])
    |> validate_required([:size, :hit_point_dice, :space, :average_hit_point_per_die])
  end
end
