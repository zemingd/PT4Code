A = gets.split.map(&:to_i)
if A[0] == A[1]
  puts A[0] + A[1]
else
  puts A.max * 2 - 1
end