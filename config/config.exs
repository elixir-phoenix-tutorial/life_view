# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :life_view, LifeViewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "59mOlLqY9mIvtc87sa+Ov9XO6U5w/iZWLQXjf/UgU78EgRpQEwxj4pq84ubdVEn+",
  render_errors: [view: LifeViewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LifeView.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "739MxbeEQpEQm5Tvew2JxMzRLGZdmqCA"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine,
  slimleex: PhoenixSlime.LiveViewEngine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
