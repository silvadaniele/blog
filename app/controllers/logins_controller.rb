class LoginsController < ApplicationController
  skip_before_action :authenticate, only: [:index, :create]

  def index

  end

  def create
    email = params[:email]
    password = params[:password]
    if email == "minhaconta@yahoo.com" and password == "chocolat"
      session[:user] = true
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    session.delete(:user)
    redirect_to root_path
  end
end
