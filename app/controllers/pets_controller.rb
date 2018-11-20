class PetsController < ApplicationController

  def show
    if Pet.find_by(id: params[:pet_id])
      @pet = Pet.find_by(id: params[:pet_id])
    end
  end

end