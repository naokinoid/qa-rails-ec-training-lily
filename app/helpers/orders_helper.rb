module OrdersHelper
  def has_prepared_shipment_status?(order)
    array = order.order_details.map {|order_detail| order_detail.shipment_status.shipment_status_name }
    if array.include?("準備中")
      link_to "注文をキャンセルする", "#", class: "btn btn-danger"
    end
  end
end
