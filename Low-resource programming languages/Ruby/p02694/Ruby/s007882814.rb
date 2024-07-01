x = gets.chomp.to_i
money = 100
count = 0

while money < x do
  money += (money * 0.01).floor
  count += 1
end

puts count