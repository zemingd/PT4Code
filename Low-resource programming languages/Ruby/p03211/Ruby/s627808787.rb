s = gets.split("").map { |i| i.to_i } 

min_s = 1000000
(s.length - 3).times do |i|
	num = (753 - (s[i]*100 + s[i+1]*10 + s[i+2])).abs
	min_s = num if  num < min_s
end

puts min_s

