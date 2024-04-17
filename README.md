# Stock Portfolio

This is a simple Ruby application that allows you to analyze a portfolio of stocks. It provides functionality to calculate the profit and annualized return of a portfolio for a given period.

## Class: Portfolio

The `Portfolio` class is the main class in this application. It has the following attributes and methods:

### Attributes

- `stocks`: An array of `Stock` objects that are part of the portfolio.

### Methods

- `profit(start_date, end_date)`: Calculates the profit of the portfolio between the `start_date` and `end_date`. It raises an error if the `start_date` is after the `end_date`.

- `annualized_return(start_date, end_date)`: Calculates the annualized return of the portfolio between the `start_date` and `end_date`.

## Usage

```ruby
# Create some Stock objects
stock1 = Stock.new(...)
stock2 = Stock.new(...)

# Create a Portfolio
portfolio = Portfolio.new([stock1, stock2])

# Calculate profit
start_date = Date.new(2020, 1, 1)
end_date = Date.new(2020, 12, 31)
profit = portfolio.profit(start_date, end_date)

# Calculate annualized return
annualized_return = portfolio.annualized_return(start_date, end_date)
```

## Run the tests
It needs rspec to run the tests.

```bash
$ gem install rspec
$ rspec spec
```
