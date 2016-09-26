defmodule ListingMonstersIntegrationTest do
  use ExUnit.Case
  use Plug.Test

  alias MonstersManual.Router
  alias MonstersManual.Monster
  alias MonstersManual.Speed
  alias MonstersManual.Challenge
  alias MonstersManual.Alignment
  alias MonstersManual.Repo

  @opts Router.init([])

  test 'listing one monster' do
#    inserted_challenge =
    %Challenge{experience: 42, rating: 42.0, proficiency: "+5"} |> Repo.insert!
#    inserted_alignment =
    %Alignment{name: "some content"} |> Repo.insert!

    inserted_monster = %Monster{ name: "Aarakocra",type: "humanoid",ac: 12,
    str: 17,str_modifier: "+3",dex: 11,dex_modifier: "+0", con: 13,con_modifier: "+1",int: 1,int_modifier: "-5",
    wis: 13,wis_modifier: "+1",cha: 6,cha_modifier: "-2", challenge_id: 1, alignment_id: 1}
    |> Repo.insert!

#        inserted_speed =
        Ecto.build_assoc(inserted_monster,
                          :speeds,
                          %Speed{burrow: "foo", climb: "bar", fly: "buz", swim: "baz", walking: "fuuuuu"})
        |> Repo.insert!


    monster = Repo.all(Monster)
              |> Repo.preload([:speeds, :challenge, :alignment])
              |> Poison.encode!


    conn = conn(:get, "/api/monsters")
    response = Router.call(conn, @opts)

    assert response.status == 200
    assert response.resp_body == monster
  end
end