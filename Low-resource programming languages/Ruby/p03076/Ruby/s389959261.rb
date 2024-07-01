sum = 0
x = []
5.times do
  i = gets.to_i
  sum += (i / 10) * 10
  x << i % 10
end

x -= [0]
x.sort!

if x.size >= 2
  sum += (x.size - 1) * 10
end

puts sum + (x[0] || 0)