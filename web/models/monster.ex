defmodule MonstersManual.Monster do
  use MonstersManual.Web, :model

  schema "monsters" do
    field :name, :string
    field :type, :string
    field :average_hit_points, :integer
    field :hit_point_dice, :string
    field :size, :string
    field :alignment, :string
    field :ac, :integer
    field :xp, :integer

    #attributes
    field :str, :integer
    field :str_modifier, :string
    field :dex, :integer
    field :dex_modifier, :string
    field :con, :integer
    field :con_modifier, :string
    field :int, :integer
    field :int_modifier, :string
    field :wis, :integer
    field :wis_modifier, :string
    field :cha, :integer
    field :cha_modifier, :string

#    hard stuff
#    field actions map
#    field skills map
#    field senses map
#    field languages map
#    field history => background of monster
#    field challenge => this is actually a map of 0.25 => 50xp

    timestamps()
  end

@all_attributes [
                    :name,
                    :type,
                    :average_hit_points,
                    :hit_point_dice,
                    :size,
                    :alignment,
                    :ac,
                    :xp,
                    :str,
                    :str_modifier,
                    :dex,
                    :dex_modifier,
                    :con,
                    :con_modifier,
                    :int,
                    :int_modifier,
                    :wis,
                    :wis_modifier,
                    :cha,
                    :cha_modifier
                    ]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @all_attributes)
    |> validate_required(@all_attributes)
  end

  defimpl Poison.Encoder, for: MonstersManual.Monster do
    def encode(monster, _options) do
      monster
      |> Map.from_struct
      |> Map.drop([:__meta__, :__struct__])
      |> Poison.encode!
    end
  end
end
