class ConvertRecipeFoodsQuantityToNumeric < ActiveRecord::Migration[7.0]
  def change
      change_table :recipe_foods do |t|
      t.change :quantity, :numeric, using: 'quantity::numeric'
    end
  end
end
