class AddSenderWalletToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :sender_wallet, :string
  end
end
