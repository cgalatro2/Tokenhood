class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Welcome to Tokenhood'
      redirect_to 'http://localhost:3000/tokens'
    else
      render 'new'
      redirect_to 'http://localhost:3000/tokens'
    end
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
