class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_url, success: "Vous êtes bien connecté.")
    else
      redirect_back_or_to(login_url, error: "Une erreur est survenue.")
    end
  end

  def destroy
    logout
    redirect_back_or_to(root_url, success: "Vous êtes bien déconnecté.")
  end
end
