X = gets.to_i
money = 100
cnt = 0

while (X > money) do
  money += money / 100
  cnt += 1
end

p cnt