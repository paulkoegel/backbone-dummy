class PostsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @posts = Post.all
    gon.post = @posts.first
  end

  def show
  end

end
