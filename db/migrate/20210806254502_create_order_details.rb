class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.string :order_detail_number, :limit => 64
      t.integer :order_quantity
      t.datetime :shipment_date
      t.timestamps
      t.references :order, foreign_key: true
      t.references :shipment_status, foreign_key: true
      t.references :product, foreign_key: true
    end
  end
end
