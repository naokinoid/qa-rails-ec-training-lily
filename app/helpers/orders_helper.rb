module OrdersHelper
  def shipment_status_array
    array = @order.order_details.map {|order_detail| order_detail.shipment_status.shipment_status_name }
  end

  def products_total_fee
    @order.order_details.sum {|order_detail| order_detail.product.price * order_detail.order_quantity }
  end
end
