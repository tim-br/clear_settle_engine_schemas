defmodule ClearSettleEngineSchemas.Participant do
  use Ecto.Schema

  schema "participants" do
    field(:participant_id, :string)
    # Define relationships and other fields
    timestamps()
  end
end
