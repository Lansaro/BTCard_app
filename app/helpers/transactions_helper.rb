# == Schema Information
#
# Table name: transactions
#
#  id              :integer          not null, primary key
#  amount          :string
#  card_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  status          :string
#  description     :string
#  private_key     :string
#  password        :string
#  my_password     :string
#  receiver_wallet :string
#  sender_wallet   :string
#

module TransactionsHelper
end
