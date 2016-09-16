class UsersController < ApplicationController
  def edit
    if current_user.id == params[:id]
      @user = User.find(params[:id])
    else
      redirect_to controller: :prototypes, action: :index
    end
  end
  def update
    user = User.find(params[:id])
    if current_user.id == user.id
      user.update(user_params)
      redirect_to controller: :prototypes, action: :index
    else
      redirect_to controller: :prototypes, action: :index
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :works, :profile, :group, :image)
  end
end
