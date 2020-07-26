class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @avatar = user.avatar
    @posts = user.posts
  end
end
