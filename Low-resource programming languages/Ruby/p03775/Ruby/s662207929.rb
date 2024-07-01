input = gets.to_i
result = 0

for i in 1..input ** 0.5
	if input % i == 0
		result = i
	end
end
puts [result.to_s.length, (input / result).to_s.length].max
