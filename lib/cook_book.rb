class CookBook
  attr_reader :recipes, :ingredients
  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.each do |recipe|
    recipe.ingredients_required.keys.each do |recipe_names|
      @ingredients << recipe_names.name
      end
    end
    @ingredients.uniq
  end

  def highest_calorie_meal
    @recipes.max do |recipe|
      recipe.total_calories
    end
  end
end
