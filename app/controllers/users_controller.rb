class UsersController < ApplicationController
  
  def index
    
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new('email' => params[:email], 'password' => params[:password])
    if @user.save
      redirect_to gossips_path
    else 
      render new_user_path
    end
  end
end
