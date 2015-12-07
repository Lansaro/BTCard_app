class AddPasswordToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :password, :string
  end
end
