module GeneralShoppingListHelper
  def generate_data(filtered)
    data = {}
    total_cost = 0

    filtered.each do |food, recipefood|
      difference = food.quantity - recipefood.quantity
      next unless difference.negative?

      price = -difference * food.price
      total_cost += price
      data[food.name] = { difference: -difference, price: }
    end

    [data, total_cost]
  end
end
