class RenameRecipePreparationTimeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :prepataion_time, :preparation_time
  end
end
