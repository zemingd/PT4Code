N, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
sorted = as.sort
ans = 0
sum = 0
sorted.each.with_index do |n, i|
  break if sum + n > x
  break if i + 1 == N && sum + n != x
  ans += 1
  sum += n
end
puts ans
