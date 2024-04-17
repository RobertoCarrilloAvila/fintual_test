require 'date'

class Stock
  attr_reader :name

  def initialize(name, prices)
    @name = name
    @prices = prices
  end

  def price(date)
    @prices[date]
  end
end
