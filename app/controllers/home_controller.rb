class HomeController < ApplicationController

  def index

      if user_signed_in?
          redirect_to home_path(current_user)
      else
          redirect_to new_user_session_path
      end

  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
  end

end
