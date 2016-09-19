defmodule MonstersManual.MonsterView do
  use MonstersManual.Web, :view

  def render("index.json", %{monsters: monsters}) do
    monsters
  end
end
