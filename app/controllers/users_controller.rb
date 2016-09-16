class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  def update
    User.update(user_params)
    redirect_to controller: :prototypes, action: :index
  end
  private
  def user_params
    params.require(:user).permit(:name, :works, :profile, :group, :image)
  end
end
