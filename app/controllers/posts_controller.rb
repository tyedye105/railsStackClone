class PostsController < ApplicationController
  before_action :require_user

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
      if @post.save
        redirect_to '/'
      else
        render :new
    end
  end

private

  def post_params
    params.require(:post).permit(:content)
end
end
