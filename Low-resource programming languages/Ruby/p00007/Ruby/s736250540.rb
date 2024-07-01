n = gets.to_i
money = 10_0000
n.times do
  rishi = ((money * 5 / 100 - 1) / 1000 + 1) * 1000
  money += rishi
end
puts money
