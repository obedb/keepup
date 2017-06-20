class PostsController < ApplicationController
before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
before_action :authenticate_staff!, only: [:new, :create, :edit, :update, :destroy]

  def home
    
  end

  def index
    @posts = Post.all
    
  end

  def show
    @post = Post.find_by(id: params[:id])
    
  end

  def new
    @post = Post.new
    @categories = Category.all 
    
  end

  def create
    @post = Post.create({title: params[:title], description: params[:description], user_id: params[:user_id]})
    @post.save
    redirect_to "/posts/#{@post.id}"
    
  end

  def edit
    @post = Post.find_by(id: params[:id])
    
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to "/posts"
    
  end
end


    