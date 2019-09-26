require 'pry'
class Occurence
  def initialize(input)
    count = 0
    puts input
    (0..input).each do |i|
        n = i
        puts i
        while n > 1
            if n % 10 == 2
                count+=1
            end
            n = n/10
        end
    end
    puts "The count is:#{count}"
  end
end

puts "Enter the limit:"
input = gets.chomp()
Occurence.new(input.to_i)