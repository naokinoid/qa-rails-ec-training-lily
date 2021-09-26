class OrdersController < ApplicationController
  before_action :logged_in_user, only: %i[show index destroy]

  def show
    @order = current_user.orders.find_by(id: params[:id])
  end

  def index
    @orders = current_user.orders.order("order_date DESC").page(params[:page]).per(15)
  end

  def destroy
    @order = current_user.orders.find_by(id: params[:id]).destroy!
    redirect_to orders_path
  end

  def create # rubocop:disable Metrics::AbcSize
    @order = Order.new(
      order_date: Time.zone.now,
      order_number: Order.last.order_number.to_i + 1,
      user_id: current_user.id,
    )
    @order.save!

    session[:cart].each.with_index(1) do |item, i|
      @order_detail = OrderDetail.new(
        order_detail_number: @order.order_number + "%05d" % i,
        order_quantity: item["quantity"],
        order_id: @order.id,
        shipment_status_id: 1,
        product_id: item["product_id"],
      )
      @order_detail.save!
    end

    UserNotifierMailer.send_orderedlist(@order).deliver

    session[:cart] = nil
    redirect_to order_path(@order)
  end
end
