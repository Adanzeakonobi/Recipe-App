class GeneralShoppingListController < ApplicationController


  def index
    @missing_food = RecipeFood.all
    @amount = RecipeFood.all.count
    # retrieve_missing_items
  end
end
