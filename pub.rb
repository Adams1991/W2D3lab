class Pub

attr_writer(:name, :till, :drinks)

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def count_drinks
    return @drinks.count()
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

end
