class GeneralShoppingListController < ApplicationController


  def index
    # @missing_food = RecipeFood.all
    # @amount = RecipeFood.all.count
    # # retrieve_missing_items
    @recipefoods = RecipeFood.all
    @foods = current_user.foods.where(id: @recipefoods).order(:id)
    @recipefoods = RecipeFood.where(food_id: @foods)
    @filtered = @foods.zip(@recipefoods).to_h
    @data = {}
    @total_cost = 0
    @filtered.each do |food, recipefood|
      difference = food.quantity - recipefood.quantity
      next unless difference.negative?

      price = -difference * food.price
      @total_cost += price
      @data[food.name] = { difference: -difference, price: }
    end

    respond_to do |format|
      format.html { render template: 'general_shopping_list/index', locals: { foods: @foods } }
    end
  end
end
