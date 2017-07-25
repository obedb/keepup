class PostsController < ApplicationController
 # before_action :authenticate_admin_staff!, only: [:new, :create, :destroy]

  def index
    if params[:sort]
      @posts = Category.find_by(id: params[:sort].to_i).posts
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comment = Comment.new
  end

  def new

  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:sucess] = "Post Created"
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

  private
  def post_params
    params.require(:post).permit(:title, :description, :user_id, category_tokens: [])
  end
end


    