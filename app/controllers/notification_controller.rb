class NotificationController < BlogsController
  def list
    @blogs = Kaminari.paginate_array(Blog.search(params[:search]).order(created_at: :desc)).page(params[:page])
  end
end
