x = gets.to_i
current = 100
year = 0
while (current < x)
  year += 1
  current = current * 101 / 100
end
puts year
