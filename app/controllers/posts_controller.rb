class PostsController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @posts = Post.order(:id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
   
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end


  def create
    @post = Post.new(post_params)
 
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, :avatar, :video_url, :download_link, :avatar_name, :role)
    end

end
