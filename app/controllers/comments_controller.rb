class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @posts = Post.all
    @posts.first(1).each do |post|
    redirect_to post_path(post.id)
    end
  end

  def show
    @comments = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
