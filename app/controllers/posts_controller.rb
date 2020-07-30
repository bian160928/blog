class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      render :create
    else
      render :new
    end
  end

  def show
    @chill = Post.where('title LIKE(?)', "%chill%").order("created_at DESC").limit(10)
    @trap = Post.where('title LIKE(?)', "%trap%").order("created_at DESC").limit(10)
    @emo = Post.where('title LIKE(?)', "%emo%").order("created_at DESC").limit(10)
    @school = Post.where('title LIKE(?)', "%school%").order("created_at DESC").limit(10)
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user).order("created_at DESC")
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private

  def post_params
    params.require(:post).permit(:name, :title, :music, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
