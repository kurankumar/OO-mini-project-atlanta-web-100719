class User
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    cards = RecipeCard.all.select do |card|
      card.user == self
    end
    cards.map do |card|
      card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, date, recipe, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    allergies = Allergy.all.select do |allergy|
      allergy.user == self
    end
    allergies.map do |allergy|
      allergy.ingredient
    end
  end

  def top_three_recipes
    cards = RecipeCard.all.select do |card|
      card.user == self
    end
    sorted_recipes = cards.sort { |a, b| b.rating <=> a.rating }
    top_three = sorted_recipes.slice(0, 3)
    top_three.map do |card|
      card.recipe
    end
  end

  def most_recent_recipe
    cards = RecipeCard.all.select do |card|
      card.user == self
    end
    the_latest = cards[0] #default to the first one is the greatest
    cards.each do |recipe| #loop through cards the recipes
      if recipe.date > the_latest.date #compares the iteration with the greatest
        the_latest = recipe #replace the greatest if necessary
      end
    end
    the_latest
  end
end
