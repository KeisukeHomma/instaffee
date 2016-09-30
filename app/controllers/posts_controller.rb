class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(posts_params)
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def posts_params
      params.require(:post).permit(:title)
    end
end
