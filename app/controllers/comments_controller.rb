class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to root_path  #ここの記述は勉強し直し！
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
