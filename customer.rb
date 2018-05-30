class Customer

  attr_reader(:wallet, :age)

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
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

  def buy_drink(pub, drink)
    return if check_age == false
    pub.remove_drink(drink)
    pub.add_money_to_till(drink.get_price())
    pay_money(drink.get_price())
  end



end
