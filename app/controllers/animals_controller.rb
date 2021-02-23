class AnimalsController < ApplicationController
before_action :set_animal, only: [:show, :destroy]

  def index
    @animals = Animal.all
  end

  def show
  end

  def destroy
    @animal.destroy
    redirect_to animals_url
  end


  private

  def set_animal
    @animal = Animal.find(params[:id])
  end
  
  def animal_params
    params.require(:animal).permit(:name, :species, :owner, )
  end
end
