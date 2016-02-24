class Api::SessionSerializer < Api::BaseSerializer
  #just some basic attributes
  attributes :id, :email, :token

  def token
    object.authentication_token
  end
end
