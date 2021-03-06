class BackendController < ApplicationController
  before_action :is_authenticated?

  layout "application"

  def index
    @current_user ||= User.find_by(id: session[:user_id])
    @current_guide ||= User.find_by(id: session[:user_id]).guide.id
  end

  def message
    @current_user ||= User.find_by(id: session[:user_id])
  end

end