X = gets.to_i
yen = 100
count = 0

while yen < X
  yen = (yen * 1.01).floor
  count += 1
end

puts count