class CharInterchange
    def initialize(input)
        b = ' '
        b = input[input.length - 1]
        input[input.length - 1] = input[0]
        input[0] = b
        puts "Resultant string is: #{input}"
    end
end

puts "Enter the string:"
input = gets.chomp
CharInterchange.new(input)