defmodule ClearSettleEngineSchemas.SecurityBalance do
  use Ecto.Schema
  import Ecto.Changeset
  alias ClearSettleEngineSchemas.{Account, Security}

  @derive {Jason.Encoder, []}
  schema "security_balances" do
    field(:balance, :integer)
    belongs_to(:account, Account)
    belongs_to(:security, Security)
    timestamps()
  end

  def changeset(security_balance, attrs) do
    security_balance
    |> cast(attrs, [:balance])
    |> validate_required([:balance])
  end
end
