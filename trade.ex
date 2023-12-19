defmodule ClearSettleEngineSchemas.Trade do
  use Ecto.Schema

  schema "trades" do
    belongs_to(:buy_side_account, ClearSettleEngine.Account)
    belongs_to(:sell_side_account, ClearSettleEngine.Account)
    belongs_to(:security, ClearSettleEngine.Security)
    field(:status, :string)
    field(:rejection_reason, :string)
    field(:processing_time, :utc_datetime)
    field(:price, :decimal)
    field(:quantity, :integer)
    timestamps()
  end
end
