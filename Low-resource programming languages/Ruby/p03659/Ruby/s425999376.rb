n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

sum = a.inject(:+)

last_sum = 0
ans = 10 ** 18
(n-1).times do |i|
  x = last_sum + a[i]
  last_sum = x
  y = sum - x
  s = (x - y).abs
  ans = s if s < ans
end
p ans
