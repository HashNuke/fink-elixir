defmodule ExfinkPlug do
  use Application

  def start(_type, _args) do
    ExfinkPlug.Supervisor.start_link
  end

end
