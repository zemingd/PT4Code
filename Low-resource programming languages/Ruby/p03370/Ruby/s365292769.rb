n,x = gets.split.map(&:to_i)
m = n.times.map{ gets.to_i }
c = m.length
x -= m.inject(:+)

while x - m.min >= 0
  c += 1
  x -= m.min
end

puts c

