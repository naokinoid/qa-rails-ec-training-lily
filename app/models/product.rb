class Product < ApplicationRecord
  has_many :order_details, dependent: :destroy
  has_many :purchases, dependent: :destroy
  belongs_to :category
  belongs_to :sale_status
  belongs_to :product_status
  belongs_to :user

  def self.search(keyword, category_id)
    where("product_name LIKE(?)", "%#{keyword}%").where(category_id: "#{category_id}#")
  end
end
