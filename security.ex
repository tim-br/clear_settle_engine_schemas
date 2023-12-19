defmodule ClearSettleEngineSchemas.Security do
  use Ecto.Schema

  schema "securities" do
    field(:security_id, :string)
    # Add other fields if necessary
    timestamps()
  end
end
