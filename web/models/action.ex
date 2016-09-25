defmodule MonstersManual.Action do
  use MonstersManual.Web, :model

  schema "actions" do
    field :name, :string
    field :legendary_action, :string
    field :reaction, :string
    field :limited_usage, :string
    field :multiattack, :string
    field :ammunition, :string
    field :legendary_lair_action, :string
    field :regional_effect, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :legendary_action, :reaction, :limited_usage, :multiattack, :ammunition, :legendary_lair_action, :regional_effect])
    |> validate_required([:name, :legendary_action, :reaction, :limited_usage, :multiattack, :ammunition, :legendary_lair_action, :regional_effect])
  end
end
