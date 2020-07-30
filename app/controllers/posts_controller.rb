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
    @chill = Post.where('title LIKE(?)', "%chill%").order("created_at DESC").limit(6)
    @trap = Post.where('title LIKE(?)', "%trap%").order("created_at DESC").limit(6)
    @emo = Post.where('title LIKE(?)', "%emo%").order("created_at DESC").limit(6)
    @school = Post.where('title LIKE(?)', "old school%").order("created_at DESC").limit(6)
    @rb = Post.where('title LIKE(?)', "%r&b%").order("created_at DESC").limit(6)
    @rg = Post.where('title LIKE(?)', "%regg%").order("created_at DESC").limit(6)
    @jazz = Post.where('title LIKE(?)', "%jazz%").order("created_at DESC").limit(6)
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
    params.require(:post).permit(:name, :title, :music, :image, :theme).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
