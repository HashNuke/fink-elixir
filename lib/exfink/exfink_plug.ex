defmodule ExFink.Plug do

  def get_request_info(conn) do
    [
        {"path", ""},
        {"method", ""},
        {"args_get", ""},
        {"args_post", ""},
        {"module", ""},
        {"session", ""},
        {"peer", ""},
        {"headers", ""}
    ]
  end

  def stacktrace(kind, reason, stack) do
    :io.format "ERROR - ~p - ~p - ~p", [kind, reason, stack]
    []
  end

  def handle_error(conn, %{kind: kind, reason: reason, stack: _stack}) do
    request = @get_request_info conn
    meta = [{"request", request}]
    :io.format "ERROR - ~p - ~p", [kind, reason]
    # ExFink.stacktrace kind, reason
  end
end
