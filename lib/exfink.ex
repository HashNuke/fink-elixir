defmodule ExFink.Main do
  def add_lager_backend,              do: :fink.add_lager_backend
  def add_sasl_backend,               do: :fink.add_sasl_backend
  def add_sasl_backend(args),         do: :fink.add_sasl_backend(args)
  def fcatch(fun),                    do: :fink.fcatch(fun)
  def fcatch(fun, onerror),           do: :fink.fcatch(fun, onerror)
  def stacktrce(error, reason),       do: :fink.stacktrace(error, reason)
  def stacktrce(error, reason, meta), do: :fink.stacktrace(error, reason, meta)
  def push(message),                  do: :fink.push(message)
  def push(message, params),          do: :fink.push(message, params)
end
