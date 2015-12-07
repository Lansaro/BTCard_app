class WalletsController < ApplicationController

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.new(wallet_params)
    if @wallet.save
      redirect_to wallet_path(@wallet)
    else
      render "new"
    end
  end

  def show
    @wallet = get_wallet
  end

  def destroy
    @wallet = get_wallet
    @wallet.destroy
    redirect_to home_path
  end

  private
  def get_wallet
    Wallet.find(params[:id])
  end

  def wallet_params
    params.require(:wallet).permit(:account, :private_key, :public_key, :active)
  end

end
