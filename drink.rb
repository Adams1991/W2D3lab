class Drink

  attr_reader(:name)

  def initialize(name, price, alcohol)
    @name = name
    @price = price
    @alcohol_level = alcohol

  end

  def get_price
    @price
  end

  def get_alcohol_level
    @alcohol_level
  end


end
