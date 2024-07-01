n = gets.chomp.to_i
k = gets.chomp.to_i

s = k
i = 1
while i < n do

	s *= (k-1)
	i += 1
end

puts s