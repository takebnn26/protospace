class UsersController < ApplicationController
  def edit
     redirect_to prototypes_index_path unless current_user.id == params[:id]
     @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to edit_user_path
    else
      render prototypes_index_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :works, :profile, :group, :image)
  end
end
