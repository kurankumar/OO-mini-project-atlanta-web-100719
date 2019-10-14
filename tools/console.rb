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
ri8 = RecipeIngredient.new(salt, bad_pizza)

rc1 = RecipeCard.new(clark, "Monday", chicken_stew, 4)
rc2 = RecipeCard.new(kuran, "Friday", bad_pizza, 5)
rc3 = RecipeCard.new(javi, "Saturday", bad_pizza, 1)
rc4 = RecipeCard.new(dan, "Thursday", pepperoni_pizza, 4)

algy1 = Allergy.new(clark, anchovies)
algy2 = Allergy.new(kuran, salt)
algy2 = Allergy.new(javi, pepper)

binding.pry
