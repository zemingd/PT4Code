N = gets.to_i
arr = gets.split(" ").map(&:to_i)
res = 0
for i in 0...N
	for j in (i+1)...N
		res += arr[i] * arr[j]
	end
end
puts res