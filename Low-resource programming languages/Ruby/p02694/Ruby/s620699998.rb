x = gets.to_i
n = 100
y = 0
loop do
  break if n >= x

  n *= 1.01
  n = n.floor
  y += 1
end
puts y