class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy
  def products_total_fee(order)
   order.order_details.sum {|order_detail| order_detail.product.price * order_detail.order_quantity }
  end
end
