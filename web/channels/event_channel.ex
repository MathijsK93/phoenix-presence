defmodule Tickets.EventChannel do
  use Tickets.Web, :channel
  alias Tickets.Presence

  def join("event:join_queue", _, socket) do
    send self(), :after_join
    {:ok, socket}
  end

  def handle_info(:after_join, socket) do
    Presence.track(socket, socket.assigns.user_id, %{
      event: "Dance festival",
      online_at: inspect(:os.timestamp())
    })
    push socket, "presence_state", Presence.list(socket)
    {:noreply, socket}
  end
end
