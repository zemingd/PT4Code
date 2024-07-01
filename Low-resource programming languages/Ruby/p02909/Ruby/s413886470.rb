w = ["Sunny","Cloudy","Rainy"]
j = 0
for i in 0...3
	j = i
	break if Regexp.new(gets.chomp) =~ w[i]
end
puts w[i+1%3]