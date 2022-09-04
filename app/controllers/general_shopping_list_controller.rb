class GeneralShoppingListController < ApplicationController
  def index
    @recipefoods = RecipeFood.all
    @foods = current_user.foods.where(id: @recipefoods).order(:id)
    @recipefoods = RecipeFood.where(food_id: @foods)
    @filtered = @foods.zip(@recipefoods).to_h
    @data, @total_cost = view_context.generate_data(@filtered)
  end
end
