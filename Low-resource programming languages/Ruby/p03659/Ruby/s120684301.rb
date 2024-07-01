n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

sum = a.inject(:+)

ans = 10 ** 18
(n-1).times do |i|
  x = a[0..i].inject(:+)
  y = sum - x
  s = (x - y).abs
  ans = s if s < ans
end
p ans
