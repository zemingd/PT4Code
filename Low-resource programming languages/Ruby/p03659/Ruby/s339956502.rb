n = gets.to_i
a = gets.split.map(&:to_i)

sum = a.inject(:+)
ans = 10 ** 18

x = 0
y = sum
(n - 1).times do |i|
  x += a[i]
  y -= a[i]
  ans = (x - y).abs if (x - y).abs < ans
end

puts ans
