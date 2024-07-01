h = gets.to_i
count = 0
while h > 0
  h /= 2
  count += 1
end
puts 2**count -1
