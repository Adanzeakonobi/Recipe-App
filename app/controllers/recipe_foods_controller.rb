class RecipeFoodsController < ApplicationController
  def show_ingredient_modal
    respond_to do |format|
      format.html
      format.js
    end
  end
end
