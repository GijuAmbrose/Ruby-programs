class Substring
    def initialize(input)
        c = []
        i = 0
        c[0] = input[0]
        input.chars.each_with_index do |ele, index|
            break if index == input.length-1
            break if i == input.length-1
            if c[i].include? input[index+1]
                i+=1
                c[i] = input[index+1]
            else
                c[i] << input[index+1]
            end
        end
        puts c.max_by(&:length).length
    end
end

puts "Enter the string:"
input = gets.chomp
Substring.new(input)
