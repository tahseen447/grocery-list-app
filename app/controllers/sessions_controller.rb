class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
      user = User.find_or_create_by_omniauth(auth_hash)
    else
      user = User.find_by(email: params[:user][:email])
      user = user.try(:authenticate, params[:user][:password])
      return redirect_to(controller: 'sessions', action: 'new') unless user
    end
    session[:user_id] = user.id
    @user = user
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
