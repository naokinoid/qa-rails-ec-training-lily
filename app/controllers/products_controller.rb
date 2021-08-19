class ProductsController < ApplicationController
  def index
    @count = Product.count
    @products = Product.page(params[:page]).per(15).order('created_at ASC')
    @categories = Category.all
  end
end
