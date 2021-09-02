class OrdersController < ApplicationController
  before_action :logged_in_user, only: %i[show index]
  before_action :correct_user, only: %i[show]

  def show
    @order = Order.find_by(id: params[:id])
  end

  def index
    @orders = Order.order("order_date DESC").page(params[:page]).per(15)
  end

  private

    def correct_user
      user = User.find_by(id: Order.find_by(id: params[:id]).user_id)
      unless user == current_user
        flash[:danger] = "他人の情報にアクセスすることはできません。"
        redirect_to orders_path
      end
    end

end
