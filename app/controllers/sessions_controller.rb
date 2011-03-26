class SessionsController < ApplicationController
  def create
    session[:uid] = auth()[:uid]
  end

  def destroy
  end
  
  def auth
    request.env["omniauth.auth"]
  end

end
