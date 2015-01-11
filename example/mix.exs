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
        {:cowboy, github: "ninenines/cowboy", tag: "1.0.1"},
        {:plug, github: "elixir-lang/plug", tag: "v0.9.0"}
    ]
  end
end
