class ChangeRecipePreparationTimeType < ActiveRecord::Migration[7.0]
  def change
    change_table :recipes do |t|
      t.change :preparation_time, :integer, using: 'preparation_time::integer'
      t.change :cooking_time, :integer, using: 'cooking_time::integer'
    end
  end
end
