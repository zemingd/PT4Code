m = 10_0000
n = gets.to_i

n.times do
  m *= 1.05
  cut = m % 1000
  m = m - cut + 1000 if cut > 0
end

puts m.to_i