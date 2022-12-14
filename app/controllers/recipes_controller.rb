class RecipesController < ApplicationController
  def new
    @current_user = current_user
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path, notice: 'Recipe created'
    else
      flash[:error] = @recipe.errors.full_messages
      render :new
    end
  end

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
    flash[:notice] = 'Recipe deleted'
    redirect_to recipes_path
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: 'Recipe updated'
    else
      flash[:error] = @recipe.errors.full_messages
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :is_public, :user_id)
  end
end
