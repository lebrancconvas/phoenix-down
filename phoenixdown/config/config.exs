# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixdown,
  ecto_repos: [Phoenixdown.Repo]

# Configures the endpoint
config :phoenixdown, PhoenixdownWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XvAPBRrzU025tlojCFadUsWTKpdRN1WuG7l4pTTg/LGRmxJstoWJN85h2XpQJcXV",
  render_errors: [view: PhoenixdownWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixdown.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
