require 'securerandom'

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

class Card < ActiveRecord::Base
  has_many :transactions
  belongs_to :wallet
  before_create :generate_card_number

  validates_presence_of :wallet_id #Every card has to belong to a wallet

  def generate_card_number
    self.number = set_card_number
    generate_card_number if Card.exists?(number: self.number)
  end

  private

  def set_card_number
    SecureRandom.hex(8)
  end
end
