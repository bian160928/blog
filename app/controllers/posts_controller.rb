class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end


  private

  def post_params
    params.require(:post).permit(:name, :title, :music, :image)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
