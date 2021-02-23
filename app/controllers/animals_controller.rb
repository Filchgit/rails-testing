class AnimalsController < ApplicationController
before_action :set_animal, only: [:show, :destroy, :edit, :update]

  def index
    @animals = Animal.all
  end

  def show
  end

  def destroy
    @animal.destroy
    redirect_to animals_url
  end
  
  def new
    @animal = Animal.new
  end


   def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render 'new'
    end
   end

   def update
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      render 'edit'
    end
  end

   def edit
   end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end
  
  def animal_params
    params.require(:animal).permit(:name, :species, :owner, )
  end
end
