class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order("created_at DESC")
    @comments = Comment.order("created_at DESC").take(6)
  end

  def new 
    @post = Post.new
  end


  def create
    Post.create(post_params)
    redirect_to root_path
  end


  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :image, :subtitle, :content)
  end


end
