defmodule Example.Mixfile do
  use Mix.Project

  def project do
    [
        apps_path: "apps",
        elixir: "~> 1.0",
        deps: deps
    ]
  end

  defp deps do
    [
        {:exfink, github: "crashdumpio/fink-elixir"},
        {:dynamo, github: "dynamo/dynamo", tag: "elixir-0.13.1"},
        {:weber, github: "elixir-web/weber", tag: "v0.1.1"},
        {:phoenix, github: "phoenixframework/phoenix", tag: "v0.7.2"}
    ]
  end
end
