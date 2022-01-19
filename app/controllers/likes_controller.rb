class LikesController < BlogsController
  def create
    Like.create(user_id: current_user.id, blog_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, blog_id: params[:id]).destroy
  end
end