# == Schema Information
#
# Table name: pos
#
#  id            :integer          not null, primary key
#  name          :string
#  category      :string
#  owner         :string
#  address       :string
#  phone         :string
#  active        :boolean
#  wallet_type   :string
#  wallet_number :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Po < ActiveRecord::Base
end
