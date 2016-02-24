class Api::UsersController < Api::BaseController
  include ActiveHashRelation

  def index
    users = User.all

    users = apply_filters(users, params)

    render(
      json: ActiveModel::ArraySerializer.new(
        users,
        each_serializer: Api::UserSerializer,
        root: 'users',
      )
    )
  end
end
