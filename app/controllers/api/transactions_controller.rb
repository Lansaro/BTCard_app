class Api::TransactionsController < Api::BaseController
  def show
    transaction = Transaction.find(params[:id])

    render(json: Api::TransactionSerializer.new(transaction).to_json)
  end
end
