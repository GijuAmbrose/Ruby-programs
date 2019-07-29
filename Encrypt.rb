# frozen_string_literal: true
class Encrypt
  attr_reader :alphabets

  def initialize(input)
    @key = "DWJXH YRFDG TMSHP UURXJ".delete(' ')
    @alphabets = alphabets
    arr = [] 
    arr2 = []
      input.chars.each do|ele|
      arr << to_numeric(ele)
    end
    puts "#{arr}"
    @key.chars.each do |ele|
      arr2 << to_numeric(ele)
    end
    puts "#{arr2}"
    add_numbers(arr,arr2)
    substract_numbers(arr2)
  end

  def substract_numbers(data)
    data.each_with_index do |item, index|
      if item < @resultant2[index] || item == @resultant2[index]
        item =+26
      end
      data2 << item - @resultant2[index]
    end
    puts ("Result2: #{data2}")
  end

  def add_numbers(arr,arr2)
    resultant = []
    arr.each_with_index do |item, index|
      resultant << item + arr2[index]
      if resultant[index] > 26
        resultant[index] = resultant[index] - 26
      end
    end
    to_alpha(resultant)
  end


  def alphabets
    ('A'..'Z').map { |alphabet| alphabet }
  end


  # to_alpha(1) => 'A'
  # to_alpha(3) => 'C' 
  def to_alpha(numeric)
    @resultant2 = []
    numeric.each do |ele|
    ele -= 26 if ele > 26
    @resultant2 << @alphabets[ele - 1]
    end
    @resultant2 = @resultant2.join
    @resultant2 = @resultant2.chars.each_slice(5).map(&:join)
    puts "Result: #{@resultant2}"
  end

  # to_numeric('A') => 1
  # to_numeric('C') => 3
  def to_numeric(alphabet)
    @alphabets.index(alphabet) + 1
  end
end

#puts  "Enter the string to be encrypted:"
input = "code in ruby live longer".upcase
input = input.delete(' ')
cipher = Encrypt.new(input)
puts cipher.inspect