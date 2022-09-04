require 'json'
module ApplicationHelper
  def generate_food_photo
    response = RestClient.get 'https://foodish-api.herokuapp.com/api/'
    JSON.parse(response)['image']
  end

  def integer_to_hours(integer)
    hrs = integer / 60
    mins = integer % 60
    hrs_string = "#{hrs} hrs" if hrs.positive?
    mins_string = "#{mins} mins" if mins.positive?
    "#{hrs_string} #{mins_string}".strip
  end

  def crop_item_description(string)
    h(truncate(string, length: 200, separator: ' ')).gsub("\n", '<br>').html_safe
  end

  def generate_random_rating
    filled_stars = rand(1..5)
    empty_stars = 5 - filled_stars
    "<span class='filled_stars'>#{'★' * filled_stars}</span><span class='empty_stars'>#{'☆' * empty_stars}</span>"
      .html_safe
  end

  def calculate_recipe_cost(recipe)
    number_with_precision(recipe.recipe_foods
      .reduce(0) { |sum, num| sum + ((num.food['price'] / num.food['quantity']) * num['quantity']) },
                          precision: 2, delimiter: ',')
  end

  def calculate_food_value(recipe_food)
    number_with_precision(recipe_food.food['price'] * recipe_food['quantity'], precision: 2, delimiter: ',')
  end
end
