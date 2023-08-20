class SessionsController < ApplicationController
  #skip_before_action :authorize, only: [:new, :create]

  def new
  end

  def create

    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:danger] = "!!!"
      render "new"
    end
  end

  def destroy
    session.destroy
    redirect_to root_url
  end

end