class AddPasswordToWallet < ActiveRecord::Migration
  def change
    add_column :wallets, :password, :string
  end
end
