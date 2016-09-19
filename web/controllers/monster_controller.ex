defmodule MonstersManual.MonsterController do
  use MonstersManual.Web, :controller
  alias MonstersManual.Monster

  def index(conn, _params) do
    monsters = Repo.all(Monster)
    render conn, monsters: monsters
  end
end