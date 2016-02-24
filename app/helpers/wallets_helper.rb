# == Schema Information
#
# Table name: wallets
#
#  id          :integer          not null, primary key
#  account     :string
#  private_key :string
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  password    :string
#

module WalletsHelper
end
