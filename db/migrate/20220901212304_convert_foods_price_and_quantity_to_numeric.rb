class ConvertFoodsPriceAndQuantityToNumeric < ActiveRecord::Migration[7.0]
  def change
     change_table :foods do |t|
      t.change :price, :money, using: 'price::money'
      t.change :quantity, :numeric, using: 'quantity::numeric'
    end
  end
end
