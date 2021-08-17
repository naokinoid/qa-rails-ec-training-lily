class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    # @user = User.find(params[:id])
    # @category = Category.find(params[:id])
  end
end
