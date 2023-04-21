class InteractiveCalculator

    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will subtract two numbers."
        first_number = @terminal.gets.to_i
        @terminal.puts "Please enter another number"
        second_number = @terminal.gets.to_i
        @terminal.puts "Here is your result:"
        @terminal.puts  "#{first_number} - #{second_number} = #{first_number - second_number}"
    end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1