require 'calculator'

RSpec.describe 'a calculator' do
  it 'adds two numbers together' do
    expect(add(2, 3)).to eq 5
    expect(add(1, 2)).to eq 3
    expect(add(0, 1)).to eq 1
    expect(add(-1, 2)).to eq 1
    expect(add(-1, -1)).to eq -2
    expect(add(0, Float::INFINITY)).to eq Float::INFINITY
    expect(add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts one number from another' do
    expect(subtract(2, 1)).to eq 1
    expect(subtract(3, 1)).to eq 2
    expect(subtract(0, 0)).to eq 0
    expect(subtract(0, 1)).to eq -1
    expect(subtract(-1, -1)).to eq 0
    expect(subtract(0, Float::INFINITY)).to eq -Float::INFINITY
  end

  it 'prints answer' do
    expect(print_answer(3)).to eq "Your answer is: 3"
    expect(print_answer(100)).to eq "Your answer is: 100"
    expect(print_answer(Float::INFINITY)).to eq "Your answer is: Infinity"
    expect(print_answer(0)).to eq "Your answer is: 0"
    expect(print_answer(-1)).to eq "Your answer is: -1"
  end
end
