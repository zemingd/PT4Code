x = gets.to_i
yen = 100
count = 0

while yen >= x do
  yen += yen / 100
  count = count + 1
end

puts count