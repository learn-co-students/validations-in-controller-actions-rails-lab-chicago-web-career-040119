class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
    @posts = Post.all
    # @post = Post.find(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
  end
end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
