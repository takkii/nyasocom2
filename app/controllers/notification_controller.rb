class NotificationController < BlogsController
  def list
    @blogs = Blog.all
  end
end
