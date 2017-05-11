require 'printer'


describe Printer do

  subject(:printer) {Printer.new}
    it 'prints answer' do
      expect(printer.print_answer(3)).to eq "Your answer is: 3"
      expect(printer.print_answer(100)).to eq "Your answer is: 100"
      expect(printer.print_answer(Float::INFINITY)).to eq "Your answer is: Infinity"
      expect(printer.print_answer(0)).to eq "Your answer is: 0"
      expect(printer.print_answer(-1)).to eq "Your answer is: -1"
    end
end
