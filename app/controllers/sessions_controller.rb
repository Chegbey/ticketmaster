class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_url, notice: 'Succès')
    else
      flash.now[:alert] = 'Inscription échouée'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_url, notice: 'Vous avez été déconnectés')
  end
end
