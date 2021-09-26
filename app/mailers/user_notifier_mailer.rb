class UserNotifierMailer < ApplicationMailer
  default from: ENV['SENDGRID_FROM']

  def send_signup_email(user)
    @user = user
    mail(to: @user.email,
         subject: "【登録完了】探求学園Rails専攻ECサイト")
  end
end
