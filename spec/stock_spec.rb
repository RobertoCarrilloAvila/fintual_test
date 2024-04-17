require_relative '../app/stock'
require 'rspec'

describe Stock do
  subject { Stock.new(name, prices) }
  let(:name) { 'Apple' }
  let(:prices) do
    {
      Date.new(2023, 1, 1) => 100,
      Date.new(2023, 1, 2) => 101,
      Date.new(2023, 1, 3) => 102,
      Date.new(2023, 1, 4) => 103,
      Date.new(2023, 1, 5) => 104,
      Date.new(2023, 1, 6) => 105
    }
  end

  describe '#price' do
  let(:expected_date) { Date.new(2023, 1, 3) }

    it 'returns the price of the stock on a given date' do
      expect(subject.price(expected_date)).to eq(102)
    end
  end
end
