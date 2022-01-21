class LikesController < ApplicationController
  before_action :blog_params

  def create
    Like.create(user_id: current_user.id, blog_id: params[:id])
    redirect_to notification_list_path
  end

  def destroy
    Like.find_by(user_id: current_user.id, blog_id: params[:id]).destroy
    redirect_to notification_list_path
  end

  private

  def blog_params
    @blog = Blog.find(params[:id])
  end
end