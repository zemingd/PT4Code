h = gets.to_i
sum = 0
sum += h

while h > 1
  h = (h / 2)
  sum += h
end

p sum