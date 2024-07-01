N = gets.to_i
A = gets.split.map!(&:to_i)
B = gets.split.map!(&:to_i)
C = gets.split.map!(&:to_i)

ans = 0
0.upto(N-1) do |i|
  ans += B[A[i]-1]
  ans += C[A[i-1]-1] if i > 0 && A[i] - 1 == A[i-1]
end

puts ans
