require("minitest/autorun")
require_relative("../drink.rb")
require("minitest/rg")

class FoodTest < MiniTest::Test

  def setup
    @food = Food.new("Fried Marsbar", 2.50, -10)
  end

end
