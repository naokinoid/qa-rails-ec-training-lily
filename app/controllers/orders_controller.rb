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
end
