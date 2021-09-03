class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[show edit]
  before_action :correct_user, only: %i[show edit]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "情報更新に成功しました"
      redirect_to controller: :users, action: :show
    else
      flash[:danger] = "情報更新に失敗しました"
      redirect_to controller: :users, action: :edit
    end
  end


  private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :zipcode, :prefecture, :municipality, :address, :apartments, :email, :phone_number, :password, :password_confirmation)
    end

    def correct_user
      user = User.find(params[:id])
      unless user == current_user
        flash[:danger] = "他人の情報にアクセスすることはできません。"
        redirect_to root_url
      end
    end
end
