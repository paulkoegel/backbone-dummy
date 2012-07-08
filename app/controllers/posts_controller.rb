class PostsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @posts = Post.order('created_at')
    gon.posts = @posts
    gon.post = @posts.first
    gon.second_post = @posts.second
    respond_to do |format|
      format.html
      format.json { render :json => @posts }
    end
  end

  def show
  end

  def update
    @post = Post.find params[:id]
    if @post.update_attributes params[:post]
      render :nothing => true, :status => 200
    else
      render :json => @post.reload, :status => 422
    end
  end

end
