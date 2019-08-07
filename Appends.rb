class Appends

    def initialize(input)
       input =  input[0, 2] == "if" ? input : "if "  << input
        puts "The resultant string is: #{input}"

    end
end
puts "Enter the string:" 
input = gets.chomp
Appends.new(input)