defmodule Example.Mixfile do
  use Mix.Project

  def project do
    [
        app: :example,
        version: "0.0.1",
        elixir: "~> 1.0",
        deps: deps
    ]
  end

  def application do
    [
        applications: [
          :sasl,
          :exfink
        ]
    ]
  end

  defp deps do
    [
        {:exfink, github: "crashdumpio/fink-elixir"}
    ]
  end
end
