class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    
  end

  def new
    
  end

  def create
    @comment = Comment.create({post_id: params[:post_id], description: params[:description], user_id: params[:user_id]})
    @comment.save
    
  end

end
