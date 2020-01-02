class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy if @user.id == current_user.id
    redirect_to root_path
  end

  def followings
    @users = @user.followings
  end

  def followers
    @users = @user.followers
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar, :profile, :sex)
  end
end
