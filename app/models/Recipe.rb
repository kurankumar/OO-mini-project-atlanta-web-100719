class Recipe
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    the_greatest = @@all[0] #default to the first one is the greatest
    @@all.each do |recipe| #loop through all the recipes
      if RecipeCard.recipes.count(recipe) > RecipeCard.recipes.count(the_greatest) #compares the iteration with the greatest
        the_greatest = recipe #replace the greatest if necessary
      end
    end
    the_greatest
  end

  def users
    #return the user instances who have recipe cards with this recipe
    cards = RecipeCard.all.select { |card| card.recipe == self }

    cards.map { |card| card.user }
    # binding.pry
  end

  def recipe_ingredients
    #return all of the ingredients in this recipe
    cards = RecipeIngredient.all.select { |ri| ri.recipe == self }

    cards.map { |card| card.ingredient }
  end

  def allergens
    recipe_ingredients.select do |ingredient|
      Allergy.ingredients.include?(ingredient)
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end
end
