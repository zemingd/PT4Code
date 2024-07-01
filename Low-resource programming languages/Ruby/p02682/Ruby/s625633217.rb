A, B, C, K = gets.chomp.split.map(&:to_i)

if A > K
  A = K
  B = 0
end

max = 1*A+0*B+(-1)*(K-(A+B))

print max