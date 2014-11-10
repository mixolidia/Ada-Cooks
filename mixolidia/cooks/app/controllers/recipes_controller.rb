class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :description, :directions))
      @ingredients = params[:recipe][:ingredients].split("\r\n")
        @ingredients.each do |i|
          Ingredient.create name: i
        end
      if @recipe.save
        redirect_to recipe_path
      else
        raise "why"
        render :new
      end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def destroy

  end

end
