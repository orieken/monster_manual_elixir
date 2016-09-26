defmodule MonstersManual.Monster do
  use MonstersManual.Web, :model

  schema "monsters" do
    field :name, :string
    field :type, :string
    field :ac, :integer
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

    has_one :speeds, MonstersManual.Speed

    belongs_to :challenge, MonstersManual.Challenge
    belongs_to :alignment, MonstersManual.Alignment
#    has_one :actions, Action
#    has_one :history

#    field :challenge_id, :integer
#    has_one :challenge, MonstersManual.Challenge
#    has_one :size, Size
#    has_one :alignment, Alignment
#    has_one :size, Size
#    mix phoenix.gen.model Size sizes size hit_point_dice space average_hit_point_per_die:integer
#    has_one :challenge, Challenge
#    mix phoenix.gen.model Challenge challenges rating:float experience:integer proficiency
#    has_one alignment, Alignment
#    mix phoenix.gen.model Alignment alignments
#    has_many :actions, Action
#    mix phoenix.gen.model Action actions name legendary_action reaction limited_usage multiattack ammunition legendary_lair_action regional_effect
#    has_one :speed
#    mix phoenix.gen.model Speed speeds walking burrow climb fly swim

#    has_many :languages, Language
#    mix phoenix.gen.model Language languages telepathy
#    has_one :speed
#    has_many :skills
#    field skills map
#    has_many :senses
#    field senses map
#    has_many :languages
#    field languages map
#    has_one :history
#    field history => background of monster


    timestamps()
  end



@all_attributes [
                    :name,
                    :type,
                    :ac,

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
      |> Map.drop([:__meta__, :__struct__, :challenge_id, :alignment_id])
      |> Poison.encode!
    end
  end
end
