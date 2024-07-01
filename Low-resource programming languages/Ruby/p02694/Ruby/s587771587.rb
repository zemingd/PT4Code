x = gets.to_i
tmp = 100
count = 0

while tmp < x
  tmp = (tmp * 1.01).floor
  count += 1
end

puts count