# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tickets,
  ecto_repos: [Tickets.Repo]

# Configures the endpoint
config :tickets, Tickets.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P8vgrB1BQG5goBvs0RU8KUUxV2n1DB+WsSrkGajrBqrpQc08hRmBs8Bpmy57yeJN",
  render_errors: [view: Tickets.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tickets.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
