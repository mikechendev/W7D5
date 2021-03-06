class UsersController < ApplicationController

  before_action :require_logged_in, only: [:edit, :update, :destroy]
  before_action :require_logged_out, only: [:new, :create]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to subs_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def show
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
