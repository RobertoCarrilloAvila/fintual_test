class Portfolio
  DAYS_IN_YEAR = 365.0

  attr_reader :stocks

  def initialize(stocks = [])
    @stocks = stocks
  end

  def profit(start_date, end_date)
    raise 'Start date must be before end date' if start_date > end_date

    stocks_price(end_date) - stocks_price(start_date)
  end

  def anualized_return(start_date, end_date)
    days = (end_date - start_date).to_i
    total_return = profit(start_date, end_date).to_f
    calculate_return(stocks_price(start_date), total_return, days)
  end

  private

  def stocks_price(date)
    @stocks.sum { |stock| stock.price(date) }
  end

  def calculate_return(starting_value, total_return, days)
    total = (1 + total_return / starting_value)**(DAYS_IN_YEAR/days) - 1
    total.truncate(2)
  end
end
