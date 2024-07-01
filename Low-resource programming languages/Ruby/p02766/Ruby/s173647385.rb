n, k = gets.split.map(&:to_i)
ans = []
pre = n
while pre > 0
  ans << pre % k
  pre /= k
end
# p ans.reverse
puts ans.size