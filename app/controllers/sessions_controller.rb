class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sing_in(user)   
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:warning] = 'login on'
    redirect_to login_path
  end
  
end 
