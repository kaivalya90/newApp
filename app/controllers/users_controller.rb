class UsersController < ApplicationController
  def show
    @current_user = User.find(params[:id])
	@users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
	  @users = User.all
      redirect_to @user
    else
      render 'new'
    end
  end
  
  
  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :username, :role, :password,
                                   :password_confirmation)
    end
	
	
  
end
