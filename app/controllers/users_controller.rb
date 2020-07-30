class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @avatar = user.avatar
    @jobrequest = user.jobrequest
    @backimage = user.backimage
    @intro = user.intro
    @posts = user.posts.order("created_at DESC")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      redirect_to edit_user_path(current_user)
    end
  end
  private

  def set_user
    @user = User.find([:id])
  end

  def user_params
    params.fetch(:user, {}).permit(:name, :avatar, :jobrequest, :intro, :backimage)
  end
end