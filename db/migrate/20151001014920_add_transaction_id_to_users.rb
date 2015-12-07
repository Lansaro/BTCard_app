class AddTransactionIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :transaction, index: true, foreign_key: true
  end
end
