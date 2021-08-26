class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy
  def has_prepared_shipment_status?(order)
    order.order_details.any? {|order_detail| order_detail.shipment_status.shipment_status_name == "準備中" }
  end
  def products_total_fee
    order_details.sum {|order_detail| order_detail.product.price * order_detail.order_quantity }
  end
end
