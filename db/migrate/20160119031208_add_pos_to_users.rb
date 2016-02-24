class AddPosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pos, :string
  end
end
