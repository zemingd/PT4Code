n,k = gets.split.map(&:to_i)
ans = k
for i in 1 .. n-1
	ans *= k-1
end
puts ans