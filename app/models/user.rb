# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  transaction_id         :integer
#

class User < ActiveRecord::Base

  has_one :wallet
  has_many :transactions
  before_create :generate_new_wallet

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def generate_new_wallet

     password=self.password
     merchant_key='143c65ca-049f-429f-8989-17681a07ca34'
     email=self.email
     label='BTCard Client Blockchain Wallet'

     blockchain_wallet = Blockchain::create_wallet(password, merchant_key, email: email, label: label)
     wallet = Wallet.new(account: blockchain_wallet.address, private_key: blockchain_wallet.identifier)
     self.wallet = wallet
   end

end
