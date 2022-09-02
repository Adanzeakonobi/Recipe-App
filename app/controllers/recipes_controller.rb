class RecipesController < ApplicationController
  def create; end

  def new; end

  def index
    @current_group = 'recipes'
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @current_group = current_user.id == @recipe.user.id ? 'recipes' : 'public_recipes'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, notice: 'Recipe deleted'
  end
end
