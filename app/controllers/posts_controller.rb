class PostsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @posts = Post.all
    gon.post = @posts.first
    gon.second_post = @posts.second
  end

  def show
  end

end
