class StaticPagesController < ApplicationController
  def home
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: "guest@example.com")
    user.password = SecureRandom.alphanumeric(6)
    user.last_name = "ようこそ"
    user.first_name = "guest"
    user.zipcode = "2221111"
    user.prefecture = "大分県"
    user.municipality = "VIP市"
    user.address = "おもてなし町"
    user.apartments = "ホワイトハウス"
    user.phone_number = "09011119999"
    user.user_classification_id = 1
    log_in user
    flash[:success] = "ゲストユーザーとしてログインしました。"
    redirect_to root_path
  end
end
