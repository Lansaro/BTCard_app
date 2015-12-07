require 'rest_client'

class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @wallet = get_wallet
    @card = get_card
    @transaction = Transaction.new
  end

  #capturing wallet, card, transaction details
  #create a transaction instance (create)
  #then to to block_chain

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.card = get_card
    if @transaction.save
      @transaction.send_transaction_to_block_chain
      redirect_to wallet_path(@transaction.card.wallet)
    else
      render "new"
    end
  end

  private

  def get_transaction
    Transaction.find(params[:id])
  end

  def get_wallet
    Wallet.find(params[:wallet_id])
  end

  def get_card
    Card.find(params[:card_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :status, :description, :foreign_wallet, :wallet, :private_key, :password)
  end
end
