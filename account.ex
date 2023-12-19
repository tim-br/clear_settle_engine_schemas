defmodule ClearSettleEngineSchemas.Account do
  use Ecto.Schema

  alias ClearSettleEngineSchemas.{Participant}

  schema "accounts" do
    field(:account_number, :string)
    belongs_to(:participant, Participant)
    timestamps()
  end
end
