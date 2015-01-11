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
        {:exfink, github: "crashdumpio/fink-elixir"}
    ]
  end
end
