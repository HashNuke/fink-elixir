defmodule ExFink.Plug do
  def stacktrace(kind, reason, stack) do
    :io.format "ERROR - ~p - ~p - ~p", [kind, reason, stack]
    []
  end

  def handle_error(_conn, %{kind: kind, reason: reason, stack: _stack}) do
    :io.format "ERROR - ~p - ~p", [kind, reason]
    # ExFink.stacktrace kind, reason
  end
end
