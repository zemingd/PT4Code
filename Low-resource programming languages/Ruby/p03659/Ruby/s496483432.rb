n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

s = 0
n.times{|i| s += a[i]}

min = 4 * 1e+9
x = 0
(n - 1).times do |i|
  x += a[i]
  y = s - x
  min = [min, (x - y).abs].min
end

puts min.to_s