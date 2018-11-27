class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pet = Pet.find_by(user_id: params[:id])
  end

end