class SessionsController < ApplicationController
  def new
    redirect_to home_path if current_user
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome. You've logged in!"
      redirect_to home_path
    else
      flash[:danger] = "There was a problem with your username or password."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You've successfully logged out."
    redirect_to root_path
  end
end
