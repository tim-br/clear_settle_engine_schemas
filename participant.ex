defmodule ClearSettleEngineSchemas.Participant do
  use Ecto.Schema

  schema "participants" do
    field(:participant_id, :string)
    timestamps()
  end
end
