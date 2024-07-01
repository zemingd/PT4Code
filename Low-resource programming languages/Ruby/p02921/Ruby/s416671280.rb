tmp = gets
tmp2 = gets
ans = 0
3.times do |n|
  ans += 1 if tmp[n] == tmp2[n]
end
ans