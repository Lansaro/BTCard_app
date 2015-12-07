class AddPrivateKeyToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :private_key, :string
  end
end
