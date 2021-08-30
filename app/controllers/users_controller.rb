class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit]
  before_action :correct_user, only: [:show, :edit]

  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
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
