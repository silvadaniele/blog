class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  protected

  def authenticate
    if session[:user] != true
      redirect_to login_path
    end
  end
end
