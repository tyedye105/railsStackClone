class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment[:user_id]= current_user.id
      if @comment.save
        redirect_to user_post_path(current_user.id, @post.id)
      else
        render :new
    end
  end
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment= Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to user_post_path(current_user.id, @post.id)
    else
      render :edit
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_post_path(current_user.id, @post.id)
  end

private

  def comment_params
    params.require(:comment).permit(:solution)
  end
end
