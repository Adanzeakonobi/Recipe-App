class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(is_public: true)
  end
end
