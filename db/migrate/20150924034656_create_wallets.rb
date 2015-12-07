class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :account
      t.string :private_key
      t.string :public_key
      t.boolean :active
      t.date :created_date
      t.float :bogus

      t.timestamps null: false
    end
  end
end
