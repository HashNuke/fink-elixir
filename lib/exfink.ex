defmodule ExFink do

  def add_lager_backend do
    :fink.add_lager_backend
  end

  def add_sasl_backend do
    :fink.add_sasl_backend
  end

  def add_sasl_backend(args) do
    :fink.add_sasl_backend args
  end

  def fcatch(fun) do
    :fink.fcatch fun
  end

  def fcatch(fun, onerror) do
    :fink.fcatch fun, onerror
  end

  def stacktrce(error, reason) do
    :fink.stacktrace error, reason
  end

  def stacktrce(error, reason, meta) do
    :fink.stacktrace error, reason, meta
  end

  def push(message) do
    :fink.push message
  end

  def push(message, params) do
    :fink.push message, params
  end
end
