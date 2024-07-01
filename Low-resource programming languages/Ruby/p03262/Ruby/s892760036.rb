n, x = gets.split.map(&:to_i)
xn = gets.split.map(&:to_i).push(x).sort


max = (x - xn[-1]).abs
min = (x - xn[0]).abs
d = max.gcd(min)

n.times do |i|
  d = (xn[i]-xn[i+1]).abs.gcd(d)
end

puts d