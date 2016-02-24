class Api::UserSerializer < Api::BaseSerializer
  attributes :id, :email, :created_at, :updated_at

  has_one :wallet
  has_many :transactions

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end

end
