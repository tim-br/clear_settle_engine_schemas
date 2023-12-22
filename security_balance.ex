defmodule ClearSettleEngineSchemas.SecurityBalance do
  use Ecto.Schema
  import Ecto.Changeset
  alias ClearSettleEngineSchemas.{Account, Security}

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

  defimpl Jason.Encoder, for: ClearSettleEngineSchemas.SecurityBalance do
    def encode(%{account: account, security: security, balance: balance} = security_balance, opts) do
      # Prepare a map with the required fields
      map = %{
        # Assuming 'name' is the field you want from Account
        account_name: account.name,
        security_id: security.id,
        balance: balance
      }

      Jason.Encode.map(map, opts)
    end
  end
end
