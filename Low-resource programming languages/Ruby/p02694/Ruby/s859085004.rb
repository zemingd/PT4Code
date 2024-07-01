# 整数の入力
a = gets.to_i
money = 100.00
cnt = 0

while money < a do
  money += money * 0.01
  cnt = cnt + 1
  money = money.floor
end
print cnt