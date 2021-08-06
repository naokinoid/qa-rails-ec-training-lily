class AddIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :category, foreign_key: true
    add_reference :products, :sale_status, foreign_key: true
    add_reference :products, :product_status, foreign_key: true
    # t.references :user, foreign_key: true
  end
end
