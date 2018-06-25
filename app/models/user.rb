class User < ActiveRecord::Base

  def find_or_create_from_omniauth(auth_hash)
    raise auth_hash.inspect
  end

end
