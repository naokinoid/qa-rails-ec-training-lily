class CartsController < ApplicationController
  def index
    @cart = session[:cart].nil? ? [] : session[:cart]
  end

  def add_item
    session[:cart] = [] if session[:cart].nil?

    if index_of_added_item.nil?
      session[:cart].push(added_item)
    else
      session[:cart][index_of_added_item]["quantity"] += params[:quantity].to_i
    end

    redirect_to carts_path
  end

  def change_quantity
    session[:cart][index_of_added_item]["quantity"] = params[:quantity].to_i
    redirect_to carts_path
  end

  # rubocop:disable Metrics::AbcSize
  def create
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

    session[:cart] = nil
    redirect_to order_path(@order)
  end
  # rubocop:enable Metrics::AbcSize

  def destroy
    session[:cart].delete_at(index_of_added_item)
    redirect_to carts_path
  end

  private

    def index_of_added_item
      indexes = session[:cart].each_index.select {|i| session[:cart][i]["product_id"] == params[:product_id].to_i }
      indexes[0]
    end

    def added_item
      { product_id: params[:product_id].to_i, quantity: params[:quantity].to_i }
    end
end
