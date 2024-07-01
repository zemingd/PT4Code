x = gets.to_i
money = 100
ans = 0
while money <= x
  ans += 1
  money = (money*1.01).floor
end
puts ans.to_i