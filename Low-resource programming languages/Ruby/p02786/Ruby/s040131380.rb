h = gets.to_i
count = 0
while h >= 1 do
  count += h
  h /= 2
end
puts count