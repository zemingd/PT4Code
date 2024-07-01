N = gets.to_i
A = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
C = gets.split(' ').map(&:to_i)

A.unshift(0)
B.unshift(0)
C.unshift(0)
ans = 0
1.upto(N) do |i|
	ans += B[A[i]]
	if i >= 2 && A[i] == A[i-1] + 1
		ans += C[A[i-1]]
	end
end
puts ans