class AddMyPasswordToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :my_password, :string
  end
end
