class Cipher
	puts("Enter the string to be decoded")
	string = gets.chomp
	c = []
	d = []
	r = []
	string3 = ""
	string2 = "DWJXH YRFDG TMSHP UURXJ"
	alpha_map = {1=>"A",2=>"B",3=>"C",4=>"D",5=>"E",6=>"F",7=>"G",8=>"H",9=>"I",10=>"J",11=>"K",12=>"L",13=>"M",
14=>"N",15=>"O",16=>"P",17=>"Q",18=>"R",19=>"S",20=>"T",21=>"U",22=>"V",23=>"W",24=>"X",25=>"Y",26=>"Z"}
	string = string.delete(' ')
	string = string.chars.each_slice(5).map(&:join)
	v = string.join.split(//)
	for i in 0..v.length-1
		for j in 0..26
			if v[i] == alpha_map[j]
				c[i] = j
			end
		end	
	end
	for i in 0..string2.length-1
		for j in 0..26
			if string2[i] == alpha_map[j]
				d[i] = j
			end
		end	
	end
  c = c.compact
  d = d.compact
	for i in 0..c.length-1
		r[i] = c[i] + d[i] 
		if r[i] > 26
			r[i]-=26
		end
	end
	for i in 0..r.length-1
		for j in 0..26
			if r[i] == alpha_map.keys[j-1]
				print alpha_map[j]
			end
		end	
	end

	r.each do |i|
		puts i.inspect
	end

	puts '***'

	d.each { |i| puts i.inspect }

	for i in 0..c.length-1
		r[i] = r[i] - d[i] 
		if r[i] == alpha_map.keys[j-1]
				print alpha_map[j]
			end

	end

end
	
