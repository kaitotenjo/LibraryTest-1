class LikesController < ApplicationController
  def create
    if @user = Book.find_by(id: params[:format])
      current_user.like(@user)
    else
      flash[:warming] = "user not found"
    end
      redirect_back fallback_location: root_path
  end

  def index
    if @user = Like.find_by(book_id: params[:format])
      current_user.unlike(@user)
    else
      flash[:warming] = "user not found"
    end
      redirect_back fallback_location: root_path
  end
end
