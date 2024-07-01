N = gets.to_i
A = gets.split.map(&:to_i)
ans = 0

1.upto(N-1) do |i| 
	(N-1).downto(i) do |j|
		if A[j-1] > A[j]
			A[j-1], A[j] = A[j], A[j-1]
			ans += 1
		end
	end
end

puts A.join(" ")
puts ans

