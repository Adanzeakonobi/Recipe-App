class PublicRecipesController < ApplicationController
  def index
    @current_group = 'public_foods'
    @public_recipes = Recipe.where(is_public: true).order(created_at: 'DESC')
  end
end
