# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :social_newtwork,
  ecto_repos: [SocialNewtwork.Repo]

# Configures the endpoint
config :social_newtwork, SocialNewtworkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RRvztOpFLe9dk+KlqiXj1TBOqGBpnYDjBpXfWHJ1sxwKWfIFhi2L7RXd3umjyJdl",
  render_errors: [view: SocialNewtworkWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SocialNewtwork.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
