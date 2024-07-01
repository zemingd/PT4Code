num = gets.split
ans = (num[0].to_i + num[1].to_i) / 2
if ans % 2 == 0
  ans += 1
end
