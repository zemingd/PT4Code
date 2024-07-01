x = gets.chomp.to_i
money = 100
year = 0

while money < x
  money = (money * 1.01).floor
  year += 1
end

puts year
