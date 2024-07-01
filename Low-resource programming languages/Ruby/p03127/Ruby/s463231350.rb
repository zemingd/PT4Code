N=gets.to_i
A=gets.split.map(&:to_i)
gcd=A[0]
for i in 1..N-1
	gcd=gcd.gcd(A[i])
end
puts gcd
