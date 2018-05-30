require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")
require("minitest/rg")


class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Shot Vodka", 4.95)
    @drink2 = Drink.new("Shot Tequila", 3.00)

    @pub = Pub.new("Queens Arms", 500)
  end

  def test_count_drinks
    assert_equal(0, @pub.count_drinks)
  end

  def test_add_drink
    @pub.add_drink(@drink1)
    assert_equal(1, @pub.count_drinks())
  end

  def test_remove_drink
    @pub.add_drink(@drink1)
    @pub.remove_drink(@drink1)
    assert_equal(0, @pub.count_drinks())
  end

  def test_count_till
    assert_equal(500, @pub.count_till())
  end

  def test_add_money_to_till
    @pub.add_money_to_till(9.90)
    assert_equal(509.90, @pub.count_till())
  end

end
