class UsersController < ApplicationController
  # ...
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.fav = params[:fav]

    if @user.save
      redirect_back_or_to(root_url, success: "L'inscription s'est déroulée avec succès !")
    else
      render :new
    end
  end

  def show
    @tickets = current_user.tickets
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
