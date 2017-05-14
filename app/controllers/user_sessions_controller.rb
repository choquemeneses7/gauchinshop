class UserSessionsController < ApplicationController
  def new
    @usuario = User.new
  end

  def create
    if @usuario == login(params[:username], params[:password])
      redirect_back_or_to(posts_path, message: "Login exitoso")
    else
      flash.now[:alert] = "Hubo Un problema con el login"
      render action: :new
    end
  end
  def destroy
    logout
    redirect_to(:users, message: "logged Out")
  end
end
