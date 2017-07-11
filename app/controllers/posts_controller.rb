class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.create({title: params[:title], description: params[:description], user_id: current_user.id})

    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
    

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


    