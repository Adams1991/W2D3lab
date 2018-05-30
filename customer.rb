class Customer

  attr_reader(:wallet, :age, :drunk_level)
  attr_writer(:drunk_level)


def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = 0
  end

  def count_money_wallet
    @wallet
  end

  def pay_money(drink)
    @wallet -= drink
  end

  def check_age
    @age >= 18
  end

  def getting_drunk(drink)
    @drunk_level += drink.get_alcohol_level()
  end

  def buy_drink(pub, drink)
    return if check_age == false
    return if drunk_level >= 100
    pub.remove_drink(drink)
    pub.add_money_to_till(drink.get_price())
    pay_money(drink.get_price())
    getting_drunk(drink)
  end






end
