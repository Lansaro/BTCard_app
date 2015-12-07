class AddForeignWalletToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :foreign_wallet, :string
  end
end
