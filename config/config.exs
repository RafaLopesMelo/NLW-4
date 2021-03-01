# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cursopay,
  ecto_repos: [Cursopay.Repo]

# Configures the endpoint
config :cursopay, CursopayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4MGeSbOXNAbeYuAJJCbFgXFnPrVi79GZtTq1JfPhwzkmGX+ntaGaGl47jJj40o2K",
  render_errors: [view: CursopayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Cursopay.PubSub,
  live_view: [signing_salt: "r3VHbRUL"]

config :cursopay, Cursopay.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
