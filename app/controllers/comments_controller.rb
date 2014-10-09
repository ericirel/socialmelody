class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.ditty_id = params[:ditty_id]

    @comment.save
    redirect_to ditty_path(@comment.ditty)
  end

  def comment_params
    params.require(:comment).permit(:user, :body)
  end
end
