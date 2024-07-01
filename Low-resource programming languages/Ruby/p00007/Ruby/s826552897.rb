n = gets.to_i
money = 100000.0
n.times do
  money *= 1.05
  if money % 1000 != 0
    money += 1000
    money -= money % 1000
  end
end
p money