class NotificationController < BlogsController
  def list
    @blogs = Kaminari.paginate_array(Blog.search(params[:search])).page(params[:page])
  end
end
