class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
    @ingredients = Ingredient.all
  end

  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find_by_id(params[:id])
    @ingredients = Ingredient.all
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end


private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
