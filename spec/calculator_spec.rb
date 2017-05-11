require 'calculator'

RSpec.describe Calculation do
  subject(:calc) {Calculation.new}
  it 'adds two numbers together' do
    expect(calc.add(2, 3)).to eq 5
    expect(calc.add(1, 2)).to eq 3
    expect(calc.add(0, 1)).to eq 1
    expect(calc.add(-1, 2)).to eq 1
    expect(calc.add(-1, -1)).to eq -2
    expect(calc.add(0, Float::INFINITY)).to eq Float::INFINITY
    expect(calc.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts one number from another' do
    expect(calc.subtract(2, 1)).to eq 1
    expect(calc.subtract(3, 1)).to eq 2
    expect(calc.subtract(0, 0)).to eq 0
    expect(calc.subtract(0, 1)).to eq -1
    expect(calc.subtract(-1, -1)).to eq 0
    expect(calc.subtract(0, Float::INFINITY)).to eq -Float::INFINITY
  end

end
