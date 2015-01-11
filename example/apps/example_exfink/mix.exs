defmodule ExampleExfink.Mixfile do
  use Mix.Project

  def project do
    [app: :example_exfink,
     version: "0.0.1",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:sasl, :exfink]]
  end

  defp deps do
    []
  end
end
