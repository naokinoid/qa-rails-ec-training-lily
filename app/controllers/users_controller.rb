class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      flash[:success] = "情報更新に成功しました"
      redirect_to("/users/:id")
    else
      flash.now[:danger] = "情報更新に失敗しました"
      render 'edit'
    end
  end


  private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :zipcode, :prefecture, :municipality, :address, :apartments, :email, :phone_number, :password)
    end
end
