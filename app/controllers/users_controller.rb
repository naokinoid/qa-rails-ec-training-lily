class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to("/users/:id")
      else
        render 'edit'
        flash[:false] = "ミスです"
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :zipcode, :prefecture, :municipality, :address, :apartments, :email, :phone_number)
    end
end
