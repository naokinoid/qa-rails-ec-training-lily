class ProductsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @products = Product.order('created_at ASC').page(params[:page]).per(15)
    @categories = Category.all
  end

  def show
    @user = User.find(params[:id])
    @product = Product.find_by(id: params[:id])
  end
end
