class UsersController < ApplicationController
  before_action :autenticate_user!
  def dashboard
  end

  def update
    @user = current_user
    if @user.update_attributes(current_user_params)
      flash[:notice] = 'Saved'
      
    else
      flash[:alert] = 'Can`t update'
    end
    redirect_to dashboard_path
  end

  private

  def current_user_params
    params.require(:user).permit(:city, :about,:status,:language)
    
  end
end