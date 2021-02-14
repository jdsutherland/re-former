class UsersController < ApplicationController
  def new; end

  def create
    @user = User.new({
                       username: params[:username],
                       email: params[:email],
                       password: params[:password]
                     })

    if @user.save
      flash[:success] = 'User has been created.'
      redirect_to new_user_path
    else
      flash.now[:alert] = 'User has not been created.'
      render 'new'
    end
  end
end
