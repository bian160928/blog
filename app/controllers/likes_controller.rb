class LikesController < ApplicationController
  
  def index
    @user = current_user
    @posts = Like.where(user_id: @user.id).all.order("created_at DESC")
  end
  
  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
