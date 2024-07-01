num = gets.split
ans = (num[0].to_f + num[1].to_f) / 2
if ans - ans.to_i != 0
  ans += 1
end
puts ans.to_i