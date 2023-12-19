defmodule ClearSettleEngineSchemas.SecurityBalance do
  use Ecto.Schema
  import Ecto.Changeset

  schema "security_balances" do
    field(:balance, :integer)
    belongs_to(:account, ClearSettleEngine.Account)
    belongs_to(:security, ClearSettleEngine.Security)
    timestamps()
  end

  def changeset(security_balance, attrs) do
    security_balance
    |> cast(attrs, [:balance])
    |> validate_required([:balance])
  end
end
