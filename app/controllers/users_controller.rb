class UsersController < ApplicationController

  def dashboard
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update(current_user_params)
      flash[:notice] = 'Saved'
      
    else
      flash[:alert] = 'Can`t update'
    end
    redirect_to dashboard_path
  end

  private

  def current_user_params
    params.require(:user).permit(:city, :about, :status, :language, :avatar)
    
  end
end
