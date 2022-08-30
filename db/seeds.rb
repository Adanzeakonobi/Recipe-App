# Create Users
@user_one = User.create(first_name: "Joshua", last_name: "Ivie", email: "joshua@joshuaivie.com", photo: "https://avatars.dicebear.com/api/micah/joshua-ivie.svg", password: "password", password_confirmation: "password", confirmed_at: DateTime.now)
@user_two = User.create(first_name: "Adaobi", last_name: "Okoye", email: "joshua@joshuaivie.com", photo: "https://avatars.dicebear.com/api/micah/ada-okoye.svg", password: "password", password_confirmation: "password", confirmed_at: DateTime.now)

# Create Recipes
@food_one = Food.create(name: "Chicken", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_one)
@food_two = Food.create(name: "Rice", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_one)
@food_three = Food.create(name: "Beans", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_one)
@food_four = Food.create(name: "Garri", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_one)
@food_five = Food.create(name: "Egusi", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_one)
@food_six = Food.create(name: "Yam", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_two)
@food_seven = Food.create(name: "Plantain", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_two)
@food_eight = Food.create(name: "Meat", measurement_unit: "lbs", price: 5, quantity: 1, user: @user_two)

# Bitter leaf
# Koko yam
# Locust beans
# Bitter leaf
# Stock Fish
# Cray Fish
# Meat
# Ponmo

# Salt
# Turmeric
# Seasoning Cube
# Sugar
# Pepper
# Black Pepper
# Cammeroon Pepper
# Uziza Seed
# Curry
# Bay Leafs
# Thyme

# Garri
# Yam
# Cassava
# Wheat

@recipe_one = Recipe.create(name: "Pounded Yam", preparation_time: " minutes", cooking_time: "30 minutes", description: "This is a chicken and rice recipe", is_public: true, user: @user_one)

# Onions
# Tomatoes
# Pepper

# Vegetable Oil
# Palm Oil

# Carrot
# Green Peas
# Green Beans
# Cabbage
# Kidney Beans
# Cauliflower
# Sweet Corn





# Create Foods
@recipe_one = Recipe.create(name: "Riceand Chicken", preparation_time: "30 minutes", cooking_time: "30 minutes", description: "This is a chicken and rice recipe", is_public: true, user: @user_one)
@recipe_two = Recipe.create(name: "Beans and Garri", preparation_time: "30 minutes", cooking_time: "30 minutes", description: "This is a beans and garri recipe", is_public: true, user: @user_one)
@recipe_three = Recipe.create(name: "Bitter Leaf Soup", preparation_time: "30 minutes", cooking_time: "30 minutes", description: "This is a egusi and yam recipe", is_public: true, user: @user_two)
@recipe_four = Recipe.create(name: "Plantain and Beans", preparation_time: "30 minutes", cooking_time: "30 minutes", description: "This is a plantain and meat recipe", is_public: true, user: @user_two)
