class Product < ApplicationRecord
  has_many :order_details
  has_many :purchases
  belongs_to :category
  belongs_tp :sale_status
  belongs_to :product_status
  belongs_to :user

end
