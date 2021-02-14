class UsersController < ApplicationController
  def new; end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'User has been created.'
      redirect_to new_user_path
    else
      flash.now[:alert] = 'User has not been created.'
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
