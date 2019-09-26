class Duplicate
  def initialize(input)
    i = 0
    input.each_with_index do |value, index|   
      index+1..input.length.times do |v|
        index += 1
        if value == input[index]
          puts "Duplicate value found #{input[index]}!!"
          puts "\n"
          break
        end
      end
    end
  end
end

p "Enter the limit of array:"
n = gets.chomp().to_i
a = []
puts "Enter the elements to array:"
n.times do |i|
  a[i] = gets.chomp().to_i
end
Duplicate.new(a)

