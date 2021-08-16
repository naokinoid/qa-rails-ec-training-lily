# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_classification1 = UserClassification.create(
  id: 1,
  user_classification_name: "一般ユーザー"
)
user_classification2 = UserClassification.create(
  id: 2,
  user_classification_name: "管理者"
)
user_classificatio3 = UserClassification.create(
  id:3,
  user_classification_name: "購入者"
)
user_classification4 = UserClassification.create(
  id:4,
  user_classification_name: "販売者"
)


user1 = User.create!(
  last_name: Gimei.last.kanji,
  first_name: Gimei.first.kanji,
  zipcode: Faker::Number.number(digits: 7),
  prefecture: Gimei.prefecture.kanji,
  municipality: Gimei.city.kanji,
  address: Gimei.town.kanji,
  apartments: Faker::Movies::HarryPotter.house,
  email: "user1@sample.com",
  phone_number: "082#{Faker::Number.number(digits: 7)}",
  company_name: Faker::Company.name,
  password: "password1",
  user_classification_id: Faker::Number.between(from: 1, to: 4)
)

user2 = User.create!(
  last_name: Gimei.last.kanji,
  first_name: Gimei.first.kanji,
  zipcode: Faker::Number.number(digits: 7),
  prefecture: Gimei.prefecture.kanji,
  municipality: Gimei.city.kanji,
  address: Gimei.town.kanji,
  apartments: Faker::Movies::HarryPotter.house,
  email: "user2@sample.com",
  phone_number: "080#{Faker::Number.number(digits: 8)}",
  company_name: Faker::Company.name,
  password: "password2",
  user_classification_id: Faker::Number.between(from: 1, to: 4)
)

shipment_status1 = ShipmentStatus.create(shipment_status_name: "準備中")
shipment_status2 = ShipmentStatus.create(shipment_status_name: "発送済")

  order1 = Order.create!(order_date: "2021-07-31", order_number: "1111", user_id:User.first.id)
  order2 = Order.create!(order_date: "2021-07-30", order_number: "2222", user_id:User.second.id)


  order_detail1 = OrderDetail.create!(
    order_detail_number: "1111",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order1.id,
    product_id:Product.arr[0].id,
    shipment_status_id:ShipmentStatus.first.id
  )

  order_detail2 = OrderDetail.create!(
    order_detail_number: "2222",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order1.id,
    product_id:Product.arr[1].id,
    shipment_status_id:ShipmentStatus.second.id
  )

  order_detail3 = OrderDetail.create!(
    order_detail_number: "3333",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order1.id,
    product_id:Product.arr[2].id,
    shipment_status_id:ShipmentStatus.first.id
  )

  order_detail4 = OrderDetail.create!(
    order_detail_number: "4444",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order1.id,
    product_id:Product.arr[3].id,
    shipment_status_id:ShipmentStatus.second.id
  )

  order_detail5 = OrderDetail.create!(
    order_detail_number: "5555",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order2.id,
    product_id:Product.arr[0].id,
    shipment_status_id:ShipmentStatus.first.id
  )

  order_detail6 = OrderDetail.create!(
    order_detail_number: "6666",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order2.id,
    product_id:Product.arr[1].id,
    shipment_status_id:ShipmentStatus.second.id
  )

  order_detail7 = OrderDetail.create!(
    order_detail_number: "7777",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order2.id,
    product_id:Product.arr[2].id,
    shipment_status_id:ShipmentStatus.first.id
  )

  order_detail8 = OrderDetail.create!(
    order_detail_number: "8888",
    order_quantity: 1,
    shipment_date: "2021-08-02",
    order_id: order2.id,
    product_id:Product.arr[3].id,
    shipment_status_id:ShipmentStatus.second.id
  )
