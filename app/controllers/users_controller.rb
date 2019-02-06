class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  @user = User.create(user_params)
   return redirect_to :new unless @user.save
   session[:user_id] = @user.id
   redirect_to controller: 'application', action: 'hello'
  end

  def edit
  end
  private
  # Use callbacks to share common setup or constraints between actions.

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end