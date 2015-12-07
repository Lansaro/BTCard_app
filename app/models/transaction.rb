# == Schema Information
#
# Table name: transactions
#
#  id             :integer          not null, primary key
#  amount         :string
#  card_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :string
#  description    :string
#  foreign_wallet :string
#  wallet         :string
#  private_key    :string
#  password       :string
#  my_password    :string
#

require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'
require 'blockchain'
require 'json'
require 'uri'

class Transaction < ActiveRecord::Base
  belongs_to :card
  belongs_to :user
  after_create :send_transaction_to_block_chain

  def send_transaction_to_block_chain

    address=self.foreign_wallet
    amount=self.amount
    from=self.card.wallet.account
    private_key=self.card.wallet.private_key
    fee=10000
    note=self.description
    my_password=self.password

    wallet = Blockchain::Wallet.new(private_key, my_password)

    payment = wallet.send(address, amount, from_address: from)

    puts payment.tx_hash

  end
end
