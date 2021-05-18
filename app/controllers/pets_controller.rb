class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :destroy]

  def index
    @pets = Pet.all.order(found_on: :desc).limit(10)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.found_on = Date.today

    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :species)
  end
end
