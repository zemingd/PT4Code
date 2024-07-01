A, B, C, K = gets.split.map(&:to_i)
if K <= A
  puts K
else
  x = K - A
  y = x - B
  ans = A - y
  puts ans
end