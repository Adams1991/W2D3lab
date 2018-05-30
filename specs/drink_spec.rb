require("minitest/autorun")
require_relative("../drink.rb")
require("minitest/rg")


class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Vodka", 4.95, 38)
  end

  def test_name_drink()
    assert_equal("Vodka", @drink.name())
  end

  def test_get_price
    assert_equal(4.95, @drink.get_price())
  end

  def test_get_alcohol_level
    assert_equal(38, @drink.get_alcohol_level())
  end
end
