require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")
require("minitest/rg")


class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Shaun", 30, 26)
    @customer2 = Customer.new("Jesus", 50, 29)
    @customer3 = Customer.new("Bob", 5, 6)

    @pub = Pub.new("Queens Arms", 500)

    @drink1 = Drink.new("Shot Vodka", 4.95, 38)
    @drink2 = Drink.new("Shot Tequila", 3.00, 36)

    @pub.add_drink(@drink1)
    @pub.add_drink(@drink2)
  end

  def test_count_money_wallet
    assert_equal(30, @customer1.count_money_wallet())
  end

  def test_pay_money
    @customer2.pay_money(@drink2.get_price())
    assert_equal(47.00, @customer2.count_money_wallet())
  end

  def test_check_age__pass
    assert_equal(true, @customer1.check_age())
  end

  def test_check_age__not_pass
    assert_equal(false, @customer3.check_age())
  end

  def test_getting_drunk
    @customer1.getting_drunk(@drink1)
    assert_equal(38, @customer1.drunk_level())
  end

  def test_buy_drink()
    @customer2.drunk_level = 80
    @customer2.buy_drink(@pub, @drink2)
    assert_equal(1, @pub.count_drinks)
    assert_equal(503.00, @pub.count_till)
    assert_equal(47.00, @customer2.count_money_wallet())
  end



end
