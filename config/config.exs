# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reg_user,
  ecto_repos: [RegUser.Repo]

# Configures the endpoint
config :reg_user, RegUserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mOsaqtjZUCWEIf2ZdtiUqPBrG0is1AHvz4n8HqgSBYDQMFgj+2fNIs0NxaO1KH8u",
  render_errors: [view: RegUserWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RegUser.PubSub,
  live_view: [signing_salt: "TuYSZzXN"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
