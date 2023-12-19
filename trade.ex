defmodule ClearSettleEngineSchemas.Trade do
  use Ecto.Schema
  alias ClearSettleEngineSchemas.{Account, Security}

  schema "trades" do
    belongs_to(:buy_side_account, Account)
    belongs_to(:sell_side_account, Account)
    belongs_to(:security, Security)
    field(:status, :string)
    field(:rejection_reason, :string)
    field(:processing_time, :utc_datetime)
    field(:price, :decimal)
    field(:quantity, :integer)
    timestamps()
  end
end
