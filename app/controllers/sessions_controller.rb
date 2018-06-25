class SessionsController < ApplicationController

  def create
    user = User.find_by(email: auth_hash["info"]["email"])
    if user.nil?
      user = User.create do |u|
        u.name = auth_hash["info"]["name"]
        u.email = auth_hash["info"]["email"]
        u.uid = auth_hash["uid"]
      end
    end
    
      session[:user_uid] = user.uid

  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
