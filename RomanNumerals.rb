class RomanNumerals
	puts "Enter the number:"
	i = 0
	result = ""
	num = gets.chomp
	num = num.to_i
	number = num
	roman_map = {1=>"I",4=>"IV",5=>"V",9=>"IX",10=>"X",40=>"XL",50=>"L",90=>"XC",100=>"C",400=>"CD",500=>"D",900=>"CM",1000=>"M"}
	while num > 0
		if num >=1 && num < 4
			r = num / 1
			result << roman_map[1] * r
			num = num % 1
		elsif num == 4
			result << roman_map[4]
			num = num % 4
		elsif num >= 5 && num < 9
			r = num / 5
			result << roman_map[5] * r
			num = num % 5
			elsif num == 9
				result << roman_map[9]
				num = num % 9
		elsif num >=10 && num < 40
			r = num /10
			result << roman_map[10]	* r	
			num = num % 10
		elsif num >=40 && num < 50
			r = num / 40
			result << roman_map[40] * r
			num = num % 40
		elsif num >=50 && num < 90
			r = num / 50
			result << roman_map[50] * r
			num = num % 50
		elsif num >= 90 && num < 100
			r = num / 90
			result << roman_map[90] * r	
			num = num % 90	
		elsif num >= 100 && num < 400
			r = num / 100
			result << roman_map[100] * r 
			num = num % 100
		elsif num >= 400 && num < 500
			r = num / 400
			result << roman_map[400] * r
			num = num % 400
		elsif num >= 500 && num < 900
			r = num / 500
			result << roman_map[500] * r
			num = num % 500
		elsif num >= 900 && num < 1000
			r = num / 900
			result << roman_map[900] * r
			num = num % 900
		elsif num >= 1000 
			r = num / 1000
			result << roman_map[1000] * r	
			num = num % 1000			
		end
	end	
	puts result
end