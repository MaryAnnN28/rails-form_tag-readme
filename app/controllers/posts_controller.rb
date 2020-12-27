class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:posts][:description]) 
    redirect_to posts_path
  end


  
end
