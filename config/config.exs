# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :monsters_manual,
  ecto_repos: [MonstersManual.Repo]

# Configures the endpoint
config :monsters_manual, MonstersManual.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jDS/IzIcMTV3m/0Owu+FY+q4YxRsBl9JP0UTyaGgCgSbr9nLTI/YNEapAV8qYWJK",
  render_errors: [view: MonstersManual.ErrorView, accepts: ~w(json)],
  pubsub: [name: MonstersManual.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
