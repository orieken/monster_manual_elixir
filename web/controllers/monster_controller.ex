defmodule MonstersManual.MonsterController do
  use MonstersManual.Web, :controller
  alias MonstersManual.Monster

  def index(conn, _params) do
    monster = Repo.all(Monster)
    |> Repo.preload([:speeds, :challenge, :alignment])
    render conn, monsters: monster
  end
end