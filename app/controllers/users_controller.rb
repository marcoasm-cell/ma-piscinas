class UsersController < ApplicationController

  ##
  # Show users list
  def index
    @users = User.all
  end

  ##
  # Show new user form
  def new
    @user = User.new
  end

  ##
  # Crate new user
  def create
    @user = User.new(user_params)
    @user.save
    return redirect_to(request.referer)
  end

  ##
  # Show an user form
  def edit
    @user = User.find_by!(id: params[:id])
  end

  ##
  # Update an user
  def update
    @user = User.find_by!(id: params[:id])
    @user.update(user_params)
    return redirect_to(request.referer)
  end

  
  def user_params
    params.require(:user).permit(:name, :email, :active, :password)
  end
end
