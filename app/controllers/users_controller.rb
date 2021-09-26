class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[show edit]
  before_action :correct_user, only: %i[show edit]
  before_action :ensure_normal_user, only: %i[edit destroy]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to root_url
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_classification_id = 1
    if @user.save
      UserNotifierMailer.send_signup_email(@user).deliver
      flash[:success] = "ユーザーを登録しました。こちらからログインしてください。"
      redirect_to login_path
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "情報更新に成功しました"
      redirect_to @user
    else
      flash.now[:danger] = "情報更新に失敗しました"
      render "edit"
    end
  end

  private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :zipcode, :prefecture, :municipality, :address, :apartments, :email, :phone_number, :password,
                                   :password_confirmation)
    end

    def correct_user
      user = User.find(params[:id])
      unless user == current_user
        flash[:danger] = "他人の情報にアクセスすることはできません。"
        redirect_to root_url
      end
    end
end
