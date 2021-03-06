class UsersController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/'
  end

private
  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password)
  end
end
