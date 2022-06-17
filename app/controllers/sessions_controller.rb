class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      session[:user_id] = user.id
      flash[:notice] = 'Logged in successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid username/password. Give it another try'
      redirect 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
