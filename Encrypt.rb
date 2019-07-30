# frozen_string_literal: true
class Encrypt
  attr_reader :alphabets

  def initialize(input,check_input)
    @key = "DWJXH YRFDG TMSHP UURXJ".delete(' ')
    @alphabets = alphabets
    arr = [] 
    arr2 = []
      input.chars.each do|ele|
      arr << to_numeric(ele)
    end
    @key.chars.each do |ele|
      arr2 << to_numeric(ele)
    end
    add_numbers(arr,arr2)
    data3 = substract_numbers(arr2)
    to_alpha(data3)
    if input.chars == @resultant2
      puts "Decrypted: #{check_input}"
    else
      p "Decryption is not success!!!!!!"
    end
  end

  def substract_numbers(data)
    data2 = []
    data.each_with_index do |item, index|
      if @decrypt[index] < item || @decrypt[index] == item
        @decrypt[index] +=26
      end
      data2 << @decrypt[index] - item
    end
    data2
  end

  def add_numbers(arr,arr2)
    resultant = []
    arr.each_with_index do |item, index|
      resultant << item + arr2[index]
      if resultant[index] > 26
        resultant[index] = resultant[index] - 26
      end
    end
    result = to_alpha(resultant)
    puts "Encrypted: #{result.join}"
  end


  def alphabets
    ('A'..'Z').map { |alphabet| alphabet }
  end


  # to_alpha(1) => 'A'
  # to_alpha(3) => 'C' 
  def to_alpha(numeric)
    @resultant2 = []
    @decrypt = []
    numeric.each do |ele|
    ele -= 26 if ele > 26
    @resultant2 << @alphabets[ele - 1]
    end
    @resultant2 = @resultant2.join
    @resultant2 = @resultant2.chars
    @resultant2.each do |ele|
      @decrypt << to_numeric(ele)
    end
  end

  # to_numeric('A') => 1
  # to_numeric('C') => 3
  def to_numeric(alphabet)
    @alphabets.index(alphabet) + 1
  end
end

#puts  "Enter the string to be encrypted:"
input = "code in ruby live longer".upcase
check_input = input
input = input.delete(' ')
cipher = Encrypt.new(input,check_input)
puts cipher.inspect