class Customer

  attr_reader(:wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def count_money_wallet
    @wallet
  end

  def pay_money(drink)
    @wallet -= drink
  end

  def buy_drink(pub, drink)
    pub.remove_drink(drink)
    pub.add_money_to_till(drink.get_price())
    pay_money(drink.get_price())
  end



end
