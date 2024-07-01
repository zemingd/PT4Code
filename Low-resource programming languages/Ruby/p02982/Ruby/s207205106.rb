n,d = gets.split.map{ |x| x.to_i }

v = []

n.times{
	v << gets.split.map{ |x| x.to_i }
}

result = 0

(0...v.size).each{ |i|
	((i+1)...v.size).each{ |j|
		sum = 0
		(0...v[i].size).each{ |k|
			sum += (v[i][k] - v[j][k]) ** 2
		}
		
		x = sum ** (1/2.0)
		
		if x.ceil == x then
			result+=1
		end
	}
}

puts result
