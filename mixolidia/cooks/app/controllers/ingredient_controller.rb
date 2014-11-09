class IngredientController < ApplicationController

  def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name))
      if @ingredient.save
        redirect_to ingredient_path
      else
        render :new
      end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy

  end

end
