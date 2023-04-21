require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
    it "subracts" do
        terminal = double :terminal

        expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.")
        expect(terminal).to receive(:gets).and_return("4")
        expect(terminal).to receive(:puts).with("Please enter another number")
        expect(terminal).to receive(:gets).and_return("3")
        expect(terminal).to receive(:puts).with("Here is your result:")
        expect(terminal).to receive(:puts).with("4 - 3 = 1")

        interactive_calculator = InteractiveCalculator.new(terminal)
        interactive_calculator.run
    end

end