# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.each do |user|
user1.orders.create!(order_date: "2021-07-31", order_number: "1111")
user2.orders.create!(order_date: "2021-07-30", order_number: "2222")
end

shipment_status1 = ShipmentStatus.create(shipment_status_name: "準備中")
shipment_status2 = ShipmentStatus.create(shipment_status_name: "発送済")


order1 = Order.first
order1.order_details.create!(
  product_id: 1,
  shipment_statuses_name: "準備中",
  order_detail_number: 1234,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order1.order_details.create!(
  product_id: 2,
  shipment_statuses_name: "準備中",
  order_detail_number: 2345,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order1.order_details.create!(
  product_id: 3,
  shipment_statuses_name: "発送済",
  order_detail_number: 3456,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order1.order_details.create!(
  product_id: 4,
  shipment_statuses_name: "発送済",
  order_detail_number: 4567,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order2 = Order.second
order2.order_details.create!(
  product_id: 1,
  shipment_statuses_name: "準備中",
  order_detail_number: 5678,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order2.order_details.create!(
  product_id: 2,
  shipment_statuses_name: "準備中",
  order_detail_number: 6789,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order2.order_details.create!(
  product_id: 3,
  shipment_statuses_name: "発送済",
  order_detail_number: 7891,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)

order2.order_details.create!(
  product_id: 4,
  shipment_statuses_name: "発送済",
  order_detail_number: 8912,
  order_quantity: 1,
  shipment_date: "2021-08-02"
)
