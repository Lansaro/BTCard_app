class RemovePublicKeyFromWallets < ActiveRecord::Migration
  def change
    remove_column :wallets, :public_key, :string
  end
end
