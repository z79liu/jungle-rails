class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "Signed up sucessfully"
      session[:user_id] = user.id
      redirect_to '/'
    else
      puts user.errors.messages
      redirect_to '/signup'
    end
  end
  
  protected

  def user_params
    params.require(:user).permit(:first_name, :last_name,:email, :password, :password_confirmation)
  end

end
