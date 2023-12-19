defmodule ClearSettleEngine.Account do
  use Ecto.Schema

  schema "accounts" do
    field(:account_number, :string)
    belongs_to(:participant, ClearSettleEngine.Participant)
    timestamps()
  end
end
