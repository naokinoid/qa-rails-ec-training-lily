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
  phone_number: Faker::Number.number(digits: 10),
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
  phone_number: Faker::Number.number(digits: 11),
  company_name: Faker::Company.name,
  password: "password2",
  user_classification_id: Faker::Number.between(from: 1, to: 4)
)
