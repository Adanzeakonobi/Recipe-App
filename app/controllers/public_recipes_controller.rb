class PublicRecipesController < ApplicationController
  def index
    @current_group = 'foods'
    @public_recipes = Recipe.where(is_public: true)
  end
end
