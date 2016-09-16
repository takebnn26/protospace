class UsersController < ApplicationController
  def edit
    current_user.id == params[:id]? ? @user = User.find(params[:id]) : redirect_to prototypes_index_path
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)? ? render prototypes_index_path : redirect_to edit_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :works, :profile, :group, :image)
  end
end
