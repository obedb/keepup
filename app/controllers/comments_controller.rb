class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
   if  @comment.save 
    flash[:sucess] = "Comment Posted"
    redirect_to :back
   end
  end

  def edit
    find_comment
  end
  def update
    find_comment
    if @comment.update(comment_params)
      flash[:sucess] = "Comment Updated"
    end
  end
  def destory
    if find_comment.destroy
      flash[:warnning] = "Comment Deleted"
    end
  end

  private

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :post_id, :user_id)
  end

end
