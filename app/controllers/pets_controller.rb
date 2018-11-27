class PetsController < ApplicationController

  def new
    @pet = Pet.new
    @colors = Color.all
    @stats = Stat.all
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      @errors = @pet.errors.full_messages
      render :new
    end
  end

  def show
    if Pet.find_by(id: params[:pet_id])
      @pet = Pet.find_by(id: params[:pet_id])
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:user_id, :pet_id, :color_id)
  end

end