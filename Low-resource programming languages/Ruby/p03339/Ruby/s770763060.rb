n = gets.to_i
s = gets.split("")
w = 0
e = 0
s_sum = []
for i in 0..n-1 do
  if s[i] == "W"
    w += 1
  else
    e += 1
  end
  s_sum << [w,e]
end

res = []
res << s_sum[n-1][1] -s_sum[0][1] #i==0
res << s_sum[n-2][0] #i==n-1
for i in 1..n-2 do #リーダーの場所
  num = s_sum[n-1][1] - s_sum[i][1] #eにあるe
  num += s_sum[i-1][0] #wにあるw
  res << num
end

puts res.min