class RemoveForeignWalletFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :foreign_wallet, :string
  end
end
