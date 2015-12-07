class RemoveTransactionIdIdFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :transaction_id, index: true, foreign_key: true
  end
end
