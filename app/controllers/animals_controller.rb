class AnimalsController < ApplicationController
  before_action :set_race

  def index
    @animals = race_class.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.find(animal_params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(animal_params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
  end

  private

  def set_race
    @race = race
  end

  def race
    Animal.races.include?(params[:type]) ? params[:type] : 'Animal'
  end

  def race_class
    race.constantize
  end

  def animal_params
    params.require(:animal).permit(:name, :age, :race)
  end
end
