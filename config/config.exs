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

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Boots.Coherence.User,
  repo: Boots.Repo,
  module: Boots,
  web_module: BootsWeb,
  router: BootsWeb.Router,
  messages_backend: BootsWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :confirmable, :registerable]

config :coherence, BootsWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
