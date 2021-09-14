class CartsController < ApplicationController
  def index
    @cart = session[:cart] || []
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
