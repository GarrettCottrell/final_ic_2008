require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient = Ingredient.new

    assert_instance_of Ingredient, ingredient
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new

    assert_equal "Cheese", ingredient1.name
    assert_equal "oz", ingredient1.unit
    assert_equal 50, ingredient1.calories
  end
end