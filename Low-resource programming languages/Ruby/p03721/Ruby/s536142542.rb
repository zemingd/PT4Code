N,K = gets.split.map(&:to_i)
ans = 0
n = 0
while n < K
  a,b = gets.split.map(&:to_i)
  n += b
  ans = a
end
puts ans