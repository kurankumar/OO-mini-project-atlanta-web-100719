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

  def self.all
    @@all
  end
end
