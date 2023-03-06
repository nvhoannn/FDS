class Admin::OrdersController < Admin::AdminController
  def index
    @orders = Order.all.order(created_at: :desc) # sắp xếp các đối tượng này theo thứ tự giảm dần của trường created_at bằng cách gọi phương thức order(created_at: :desc)
  end
end
