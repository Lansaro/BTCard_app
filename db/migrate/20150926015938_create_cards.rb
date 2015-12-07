class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.boolean :active
      t.string :nickname
      t.references :wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
