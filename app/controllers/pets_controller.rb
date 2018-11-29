class PetsController < ApplicationController

  def new
    @pet = Pet.new
    @species = Species.all
    @colors = Color.all
    @stats = Stat.all
  end

  def create
    @pet = Pet.new(pet_params)
    @species = Species.all
    @colors = Color.all
    @stats = Stat.all
    if @pet.save
      @pet.pet_stats.create(
        pet_id: @pet.id,
        stat_id: @stat.id
        )
      flash[:notice] = "Pet was saved"
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
    params.require(:pet).permit(:user_id, :pet_id, :species_id, :color_id, :name)
  end

end