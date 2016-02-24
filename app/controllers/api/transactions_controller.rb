# class Api::TransactionsController < Api::BaseController
#   def show
#     transaction = Transaction.find(params[:id])
#
#     render(json: Api::TransactionSerializer.new(transaction).to_json)
#   end
#
#   def index
#     transactions = Transaction.all
#
#     render(
#       json: ActiveModel::ArraySerializer.new(
#         transactions,
#         each_serializer: Api::TransactionSerializer,
#         root: 'transactions',
#       )
#     )
#   end
#
#
# end
