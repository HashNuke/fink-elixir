defmodule ExfinkPlug.View do
  use Plug.Router
  use Plug.ErrorHandler

  plug :match
  plug :dispatch

  match _ do
    :lists.map 1
    send_resp conn, 200, "world"
  end

  defp handle_errors(conn, error) do
    ExFink.Plug.handle_error conn, error
    send_resp(conn, conn.status, "Something went wrong")
  end
end
