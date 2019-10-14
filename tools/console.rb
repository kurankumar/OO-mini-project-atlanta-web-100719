require_relative "../config/environment.rb"

kuran = User.new("kuran")
clark = User.new("clark")
javi = User.new("javi")
dan = User.new("dan")

salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
anchovies = Ingredient.new("anchovies")
chicken = Ingredient.new("chicken")
fish = Ingredient.new("fish")
pepperoni = Ingredient.new("pepperoni")

pepperoni_pizza = Recipe.new("pepperoni pizza")
bad_pizza = Recipe.new("anchovie pizza")
chicken_stew = Recipe.new("chicken stew")

ri1 = RecipeIngredient.new(pepperoni, pepperoni_pizza)
ri2 = RecipeIngredient.new(salt, pepperoni_pizza)
ri3 = RecipeIngredient.new(chicken, chicken_stew)
ri4 = RecipeIngredient.new(pepper, chicken_stew)
ri5 = RecipeIngredient.new(salt, chicken_stew)
ri6 = RecipeIngredient.new(anchovies, bad_pizza)
ri7 = RecipeIngredient.new(fish, bad_pizza)

rc1 = RecipeCard.new(clark, "Monday", chicken_stew, 4)
rc2 = RecipeCard.new(kuran, "Friday", pepperoni_pizza, 5)
rc3 = RecipeCard.new(javi, "Saturday", bad_pizza, 1)

binding.pry
