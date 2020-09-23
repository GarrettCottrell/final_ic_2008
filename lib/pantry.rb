class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe1)
    @stock.each do |stock_key, stock_value|
    recipe1.ingredients_required.each do |recipe_key, recipe_value|
      if @stock[recipe_key] <= recipe_value
        return false
      else
        return true
        end
      end
    end
  end
end
