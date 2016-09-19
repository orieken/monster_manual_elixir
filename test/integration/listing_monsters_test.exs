defmodule ListingMonstersIntegrationTest do
  use ExUnit.Case
  use Plug.Test
  alias MonstersManual.Router
  alias MonstersManual.Monster
  alias MonstersManual.Repo

  @opts Router.init([])

  test 'listing one monster' do
    %Monster{
    name: "Aarakocra",
    type: "humanoid",
    average_hit_points: 13,
    hit_point_dice: "3d8",
    size: "medium",
    alignment: "neutral good",
    ac: 12,
    xp: 50,
    str: 17,
    str_modifier: "+3",
    dex: 11,
    dex_modifier: "+0",
    con: 13,
    con_modifier: "+1",
    int: 1,
    int_modifier: "-5",
    wis: 13,
    wis_modifier: "+1",
    cha: 6,
    cha_modifier: "-2"
    }
    |> Repo.insert!

    monster = Repo.all(Monster)
              |> Poison.encode!


    conn = conn(:get, "/api/monsters")
    response = Router.call(conn, @opts)

    assert response.status == 200
    assert response.resp_body == monster
  end
end