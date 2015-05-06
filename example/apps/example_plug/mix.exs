defmodule ExfinkPlug.Mixfile do
  use Mix.Project

  def project do
    [
      app: :example_plug,
      version: "0.0.1",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.0",
      deps: deps
    ]
  end

  def application do
    [
      applications: [:sasl, :exfink, :cowboy, :plug],
      mod: {ExfinkPlug, []}
    ]
  end

  defp deps do
    [
      {:cowboy, github: "extend/cowboy", tag: "1.0.0", override: true},
      {:plug, github: "elixir-lang/plug", tag: "v0.9.0"}
    ]
  end
end
