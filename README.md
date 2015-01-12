# fink-elixir
Elixir client for CrashDump

ExFink is a wrapper around fink library

Plug
====

User sasl backend

```erlang
ExFink.add_sasl_backend
```

or `ExFink.Plug` module

```
defp handle_errors(conn, error) do
  ExFink.Plug.handle_error conn, error
  send_resp(conn, conn.status, "Something went wrong")
end
```
