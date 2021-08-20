class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(15).order('created_at ASC')
    @categories = Category.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
