x = gets.to_i
k = 0
money = 100
while money < x
  money = (money * 1.01).floor
  k += 1
end
puts k
