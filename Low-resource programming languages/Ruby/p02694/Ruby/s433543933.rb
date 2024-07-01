X = gets.to_i
ac = 100
count = 0
while ac < X do
  ac *= 1.01
  ac = ac.floor
  count += 1
end
puts count
