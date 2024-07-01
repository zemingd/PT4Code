a, b, c = gets.split.map{|i| i.to_i}

count= 0
a.upto(b) do |i|
	count += 1 if c % i == 0
end

puts count