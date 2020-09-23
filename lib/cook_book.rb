class CookBook
  attr_reader :recipes, :ingredients
  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def add_recipe

  end
end
