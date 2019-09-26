class Threesum

  def initialize (input,n)
    c = []
    s = 2**n
    i = 0
    arr = []
    c = input.combination(3).to_a
    c.each do |ele|
      3.times do |j|
        s += ele[i][j]
        puts s
        if s == 0
          arr[i] = ele[i][j]
        end
      end
    end
    puts arr

  end

end
puts "Enter the limit:"
n = gets.chomp.to_i
input = []
puts "Enter the elements:"
n.times do |i|
    input[i] = gets.chomp.to_i
end
Threesum.new(input,n)
    