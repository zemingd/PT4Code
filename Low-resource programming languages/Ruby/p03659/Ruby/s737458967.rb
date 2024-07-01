N = gets.to_i
as = gets.split.map(&:to_i)
current = 0
sums = as.map do |a|
  current += a
  current
end
ans = 1 << 60
sum = sums[-1]
(0...(N - 1)).each do |i|
  a = sums[i]
  b = sum - a
  n = (a - b).abs
  ans = n if n < ans
end
puts ans
