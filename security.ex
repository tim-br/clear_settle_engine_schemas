defmodule ClearSettleEngineSchemas.Security do
  use Ecto.Schema

  schema "securities" do
    field(:security_id, :string)
    timestamps()
  end
end
