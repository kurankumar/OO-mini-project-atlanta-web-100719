class Allergy
  attr_reader :ingredient, :user
  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.users
    @@all.map { |allergy| allergy.user }
  end

  def self.ingredients
    @@all.map { |allergy| allergy.ingredient }
  end

  def self.all
    @@all
  end
end
