class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at ASC").page(params[:page]).per(15)
    @categories = Category.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def search
    # byebug
    @products = Product.search(params[:keyword], params[:category_id]).page(params[:page]).per(15)
    @category_name = params[:category_name]
    @keyword = params[:keyword]
    # byebug
    render "index"

  end
end
