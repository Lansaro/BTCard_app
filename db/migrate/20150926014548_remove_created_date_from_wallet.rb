class RemoveCreatedDateFromWallet < ActiveRecord::Migration
  def change
    remove_column :wallets, :created_date, :date
  end
end
