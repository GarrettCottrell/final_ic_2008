class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, quantity_added)
    if @ingredients_required[ingredient]
      @ingredients_required[ingredient] += quantity_added
    else
      @ingredients_required[ingredient] = quantity_added
    end
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories

  end
end
