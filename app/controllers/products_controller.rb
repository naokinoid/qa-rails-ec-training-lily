class ProductsController < ApplicationController
  def index
    if params[:keyword].present? && params[:category_id].present?
      @products = Product.search(params[:keyword], params[:category_id]).page(params[:page]).per(15)
      @keyword = params[:keyword]

      render "index"
    else
      @products = Product.all.order("created_at ASC").page(params[:page]).per(15)
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
