defmodule ExFink.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exfink,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      description: "Elixir client for https://crashdump.io",
      source_url: "https://github.com/crashdumpio/fink-elixir",
      package: package,
      deps: deps
    ]
  end

  def application do
    [
        applications: [:fink]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      contributors: ["Roman Gladkov"],
      licenses: [""],
      links: %{"GitHub" => "https://github.com/crashdumpio/fink-elixir",
               "Docs" => "http://docs.crashdump.io"}
    ]
  end

  defp deps do
    [
      {:fink, github: "crashdumpio/fink-erlang"},
      {:dynamo, github: "dynamo/releases", tag: "elixir-0.13.1"},
      {:weber, github: "elixir-web/weber", tag: "v0.1.1"}
      {:phoenix, github: "phoenixframework/phoenix", tag: "v0.7.2"}
    ]
  end
end
