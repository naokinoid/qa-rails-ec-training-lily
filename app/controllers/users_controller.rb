class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[show edit]
  before_action :correct_user, only: %i[show edit]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(@user_params)
    if @user
      flash[:success] = "ユーザーを登録しました。こちらからログインしてください。"
      redirect_to login_path
    end
  end

  private

    def correct_user
      user = User.find(params[:id])
      unless user == current_user
        flash[:danger] = "他人の情報にアクセスすることはできません。"
        redirect_to root_url
      end
    end
end
