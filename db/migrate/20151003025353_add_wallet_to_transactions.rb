class AddWalletToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :wallet, :string
  end
end
