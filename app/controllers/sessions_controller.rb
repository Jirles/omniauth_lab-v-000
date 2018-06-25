class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_omniauth(auth_hash)
    if user
      session[:user_uid] = user.uid
    else
      redirect_to root_path
    end
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
