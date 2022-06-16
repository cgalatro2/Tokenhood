class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Welcome to Tokenhood'
    else
      render 'new'
    end
    redirect_to 'http://localhost:3000/'
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
