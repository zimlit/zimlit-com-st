class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :login_req]
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else 
      redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end
  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
  def login_req
  end
end
