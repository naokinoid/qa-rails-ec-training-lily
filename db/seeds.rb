# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  last_name: "わんこ",
  first_name: "犬の",
  zipcode: "123-3456",
  prefecture: "京都府",
  municipality: "木津川市",
  address: "加茂町大野919-1",
  apartments: "",
  email: "wanwanwanko@sample.com",
  phone_number: "090-1234-5678",
  company_name: "wankonyanko"
  password: "aaa"
  # password_digest: "",
  # delete_flag: ,
  # user_classification:
)
