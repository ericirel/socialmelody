class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
    @ditty = Ditty.find(params[:ditty_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.body = comment_params[:body]
    # @comment.ditty = Ditty.find(params[:ditty])
    @comment.user_id = @user
    if @comment.save
      flash[:notice] = "Comment posted"
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong"
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user, :body, :ditty_id)
  end
end
