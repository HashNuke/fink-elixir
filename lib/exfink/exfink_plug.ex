defmodule ExFink.Plug do
  def stacktrace(kind, reason, stack) do
    :io.format "ERROR - ~p - ~p - ~p", [kind, reason, stack]
    []
  end

  def handle_error(conn, %{kind: kind, reason: reason, stack: stack}) do
    :io.format "ERROR - ~p ~p - ~p - ~p", [conn, kind, reason, stack]
  end
end
