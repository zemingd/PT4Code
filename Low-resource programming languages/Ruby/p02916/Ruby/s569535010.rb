N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i)

ans = 0
for i in 0..N - 1
  a = A[i] - 1
  ans += B[a] + (i > 0 && A[i] == A[i - 1] + 1 ? C[a - 1] : 0)
end

puts ans.to_s
