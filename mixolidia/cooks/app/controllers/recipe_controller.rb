class RecipeController < ApplicationController

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :description, :directions))
      if @recipe.save
        redirect_to recipe_path
      else
        render :new
      end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def destroy

  end

end
