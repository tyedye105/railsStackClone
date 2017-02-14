class PostsController < ApplicationController
  before_action :require_user
  def new
    @post = Post.new
  end

end
