# class Api::TransactionSerializer < Api::BaseSerializer
#   attributes :id, :amount, :card_id, :description, :wallet, :foreign_wallet, :created_at, :updated_at
#
#   has_one :card
#
#   def created_at
#     object.created_at.in_time_zone.iso8601 if object.created_at
#   end
#
#   def updated_at
#     object.updated_at.in_time_zone.iso8601 if object.created_at
#   end
# end
