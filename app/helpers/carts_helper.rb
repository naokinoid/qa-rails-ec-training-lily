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
    total = 0
    cart.each do |item|
      total += get_sub_total(item)
    end
    total
  end
end
