class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.save

    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

  def edit
    find_comment
  end
  def update
    find_comment
    if @comment.update(comment_params)
      flash[:sucess] = "Comment Updated"
      redirect_to :back
    end
  end
  def destroy
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.find_by(id: params[:id])
    @comment.destroy

    redirect_to :back
  end

  private

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :post_id, :user_id)
  end

end
