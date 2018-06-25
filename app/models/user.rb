class User < ActiveRecord::Base
  def find_or_create_from_omniauth(auth_hash)
    if user = User.find_or_create_by(auth_hash["info"]["email"])
end
