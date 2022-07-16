class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)

    render json: @user, status: :created
  end

  private

  def user_params
      params.require(:user).permit(:email, :password, :name, :discipline_ids: [])
  end
  
end
