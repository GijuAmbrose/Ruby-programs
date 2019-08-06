class AreaOfCircle
    
    def initialize(input)
        puts "The area of circle is:#{input*input*3.14}   " 
        puts "The perimiter of circle is: #{2*input*3.14}"    
    end

end

puts "Enter the radius of circle:"
input = gets.chomp
input = input.to_i
AreaOfCircle.new(input)