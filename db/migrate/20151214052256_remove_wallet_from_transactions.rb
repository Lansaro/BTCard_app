class RemoveWalletFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :wallet, :string
  end
end
