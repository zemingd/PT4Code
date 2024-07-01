N, K= gets.chomp.split.map(&:to_i)

i = 0
res = 0

while i < N
	if i == 0
		res = K
	else
		res *= (K-1)
	end
	i += 1
end

puts res