X = gets.to_i
money = 100
count = 0

while true do
  money = (money * 1.01).floor
  count += 1
  break if money >= X
  
end

puts count
