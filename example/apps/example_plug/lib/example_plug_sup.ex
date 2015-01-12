defmodule ExfinkPlug.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    Plug.Adapters.Cowboy.http ExfinkPlug.View, []
    IO.puts "Running ExfinkPlug with Cowboy on http://localhost:4000"
    children = []
    supervise(children, strategy: :one_for_one)
  end
end
