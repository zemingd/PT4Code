n, k = gets().split(' ').map(&:to_i)
a = gets().split(' ').map(&:to_i)

max = -1

for x in 0 .. k
	fx = 0
	for i in 0 ... a.length
		fx += x ^ a[i]
	end

	max = fx if max < fx
end

puts max
