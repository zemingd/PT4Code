n, x = gets.split.map(&:to_i)
x = (gets.split.map(&:to_i) << x).sort
d = []
(x.size - 1).times do |i|
  d << (x[i + 1] - x[i])
end
puts d.inject(:gcd)
