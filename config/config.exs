# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :boots,
  ecto_repos: [Boots.Repo]

# Configures the endpoint
config :boots, BootsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "93McMSQVPPL3nRKJF4e83L+1ZHjq7t56WD6pH0i4F/8rsqJkXcVSVU0bSCqf1SHi",
  render_errors: [view: BootsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Boots.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
