class RecipeCard
  attr_reader :user, :date, :recipe
  attr_accessor :rating
  @@all = []

  def initialize(user, date, recipe, rating)
    @user = user
    @date = date
    @recipe = recipe
    @rating = rating
    @@all << self
  end

  def self.recipes
    @@all.map { |rc| rc.recipe }
  end

  def self.users
    @@all.map { |rc| rc.user }
  end

  def self.all
    @@all
  end
end
