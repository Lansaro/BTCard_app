# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  number     :string
#  active     :boolean
#  nickname   :string
#  wallet_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @wallet = get_wallet
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.wallet = get_wallet
    if @card.save
      redirect_to wallet_path(get_wallet)
    else
      render "new"
    end
  end

  def edit
    @card = get_card
  end

  def update
    @card = get_card
    if @card.update(card_params)
      redirect_to wallet_path(@wallet), notice: "Card is updated"
    else
      render "edit"
    end
  end

  def destroy
    @card = get_card
    @card.destroy
    redirect_to wallet_path
  end

  private
  def get_card
    Card.find(params[:id])
  end

  def get_wallet
    Wallet.find(params[:wallet_id])
  end

  def card_params
    params.require(:card).permit(:number, :active, :nickname)
  end
end
