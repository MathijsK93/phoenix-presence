defmodule Tickets.Presence do
  use Phoenix.Presence, otp_app: :tickets,
                        pubsub_server: Tickets.PubSub

  # use Phoenix.Presence, otp_app: :tickets

  def fetch(_topic, entries) do
    for {key, %{metas: metas}} <- entries, into: %{} do
      {key, %{metas: metas, user: %{name: "matt"}}}
    end
  end
end
