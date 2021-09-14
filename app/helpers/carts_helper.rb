module CartsHelper
  def get_product_name(product_id)
    Product.find_by(id: product_id).product_name
  end

  def get_category_name(product_id)
    Product.find_by(id: product_id).category.category_name
  end

  def get_price(product_id)
    Product.find_by(id: product_id).price
  end

  def get_sub_total(item)
    get_price(item["product_id"]) * item["quantity"]
  end

  def get_total(cart)
    cart.sum {get_sub_total(_1)}
  end
end
