class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :number
      t.string :amount
      t.references :card, index: true, foreign_key: true
      t.references :merchant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
