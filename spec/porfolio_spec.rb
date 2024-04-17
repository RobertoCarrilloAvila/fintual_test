require_relative '../app/portfolio'
require_relative '../app/stock'
require 'rspec'

describe Portfolio do
  subject { Portfolio.new(stocks) }

  let(:stocks) { [apple, tesla] }
  let(:apple_prices) do
    {
      Date.new(2023, 1, 1) => 100,
      Date.new(2023, 1, 2) => 101,
      Date.new(2023, 1, 3) => 102,
      Date.new(2023, 1, 4) => 103,
      Date.new(2023, 1, 5) => 104,
      Date.new(2023, 1, 6) => 105
    }
  end

  let(:tesla_prices) do
    {
      Date.new(2023, 1, 1) => 200,
      Date.new(2023, 1, 2) => 201,
      Date.new(2023, 1, 3) => 202,
      Date.new(2023, 1, 4) => 203,
      Date.new(2023, 1, 5) => 204,
      Date.new(2023, 1, 6) => 205
    }
  end
  let(:apple) { Stock.new('Apple', apple_prices) }
  let(:tesla) { Stock.new('Tesla', tesla_prices) }

  let(:start_date) { Date.new(2023, 1, 1) }
  let(:end_date) { Date.new(2023, 1, 3) }

  describe '#profit' do
    it 'returns the profit of the portfolio between two dates' do
      expect(subject.profit(start_date, end_date)).to eq(4)
    end

    context 'when the start date is after the end date' do
      it 'returns a negative profit' do
        expect { subject.profit(end_date, start_date) }
          .to raise_error('Start date must be before end date')
      end
    end
  end

  describe '#anualized_return' do
    it 'returns the anualized return of the portfolio between two dates' do
      expect(subject.anualized_return(start_date, end_date)).to eq(10.21)
    end
  end
end
