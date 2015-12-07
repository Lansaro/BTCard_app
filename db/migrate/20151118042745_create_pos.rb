class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|
      t.string :name
      t.string :category
      t.string :owner
      t.string :address
      t.string :phone
      t.boolean :active
      t.string :wallet_type
      t.string :wallet_number

      t.timestamps null: false
    end
  end
end
