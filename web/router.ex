defmodule MonstersManual.Router do
  use MonstersManual.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MonstersManual do
    pipe_through :api

    get  "/", MonsterController, :index
  end

  scope "/api", MonstersManual do
    pipe_through :api

    get "/monsters", MonsterController, :index
  end
end
