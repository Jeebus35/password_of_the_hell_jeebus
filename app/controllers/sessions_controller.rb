class SessionsController < ApplicationController


  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to gossips_path
    else 
      flash.now[:danger] = 'Invalid email/password combination'
      render new_user_path
    end
  end

end
