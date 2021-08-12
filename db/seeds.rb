Category.create(category_name: "キャンプ")
Category.create(category_name: "運動・トレーニング")

SaleStatus.create(sale_status_name:"在庫あり")
SaleStatus.create(sale_status_name:"通常1週間以内に発送")
SaleStatus.create(sale_status_name:"発売前/予約注文可")
SaleStatus.create(sale_status_name:"一時的に在庫切れ")
SaleStatus.create(sale_status_name:"現在お取り扱いできません")

ProductStatus.create(product_status_id_name:"新品")
ProductStatus.create(product_status_id_name:"中古 – 非常に良い")
ProductStatus.create(product_status_id_name:"中古 – 良い")
ProductStatus.create(product_status_id_name:"中古 – 可")

Product.create(
  product_name:"LEDランタン",
  price:5000,
  description:"キャンプサイトを優しく彩るアンティーク風LEDランタン。明るさ : 20〜370ルーメン 無段階調節",
  regist_date:Time.now,
  delete_flag:false,
  category_id:Category.first.id,
  sale_status_id:SaleStatus.first.id,
  product_status_id:ProductStatus.first.id,
  user_id:User.first.id
)

Product.create(
  product_name:"ヘキサタープ",
  price:30000,
  description:"サイズ:使用時/約460×435×高さ230cm、収納時/約直径18×74cm、メインポール・サイドポール/約直径19×長さ180mm、重量:約7.6kg",
  regist_date:Time.now,
  delete_flag:false,
  category_id:Category.first.id,
  sale_status_id:SaleStatus.first.id,
  product_status_id:ProductStatus.first.id,
  user_id:User.first.id
)

Product.create(
  product_name:"可変式ダンベル",
  price:12800,
  description:"【5段階調整の筋トレダンベル】：5kg～25kgの間でお好みの重さに5段階で調節可能！初心者から上級者まで自分に合ったウエイトでトレーニングできます",
  regist_date:Time.now,
  delete_flag:false,
  category_id:Category.second.id,
  sale_status_id:SaleStatus.first.id,
  product_status_id:ProductStatus.first.id,
  user_id:User.second.id
)

Product.create(
  product_name:"プロテイン",
  price:3980,
  description:"【2021年モンドセレクション最高金賞】世界が認めた絶品チョコ風味！3～5シェイクで素早く溶けてダマにならない！",
  regist_date:Time.now,
  delete_flag:false,
  category_id:Category.second.id,
  sale_status_id:SaleStatus.first.id,
  product_status_id:ProductStatus.first.id,
  user_id:User.second.id
)
