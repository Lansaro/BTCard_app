class RemoveBogusFromWallets < ActiveRecord::Migration
  def change
    remove_column :wallets, :bogus, :float
  end
end
