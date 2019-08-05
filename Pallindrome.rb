class Pallindrome

    def initialize(input)
        num = input
        s = process(num)
        if s == input
            puts "The number is pallindrome"
        else
            puts "The number is not pallidrome"
        end
        
    end

    def process(num)
        s = 0
        while(num > 0)
            value = num % 10
            s = s*10 + value
            num = num/10
        end
        s
    end
end
input = gets.chomp
input = input.to_i
Pallindrome.new(input)