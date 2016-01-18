class AddReceiverWalletToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :receiver_wallet, :string
  end
end
