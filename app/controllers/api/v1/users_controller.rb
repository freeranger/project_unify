class Api::V1::UsersController < ApiController

  swagger_controller :users, 'Users'

  swagger_api :index do
    summary 'Returns all users'
    notes 'This lists all users in the system'
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:user][:id])
  end
end