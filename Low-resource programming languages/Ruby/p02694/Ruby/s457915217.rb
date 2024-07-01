X = gets.to_i
count = 0
money = 100

while money < X do
  money = (money * 1.01).floor
  count += 1
end

puts count