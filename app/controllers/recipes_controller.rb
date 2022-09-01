class RecipesController < ApplicationController
  def create; end

  def new; end

  def index
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def show; end

  def destroy; end

  def public_recipes; end
end
