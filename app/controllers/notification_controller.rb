class NotificationController < BlogsController
  def list
    @blogs = Kaminari.paginate_array(Blog.search(params[:search]).order(days: :desc)).page(params[:page])
  end
end
