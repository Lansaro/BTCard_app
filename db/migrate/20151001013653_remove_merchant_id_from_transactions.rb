class RemoveMerchantIdFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :merchant_id, :integer
  end
end
