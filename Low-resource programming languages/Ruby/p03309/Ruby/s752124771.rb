N = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
ans1 = 0
ans2 = 0
for i in 0..a.length-1
  a[i] = a[i] - (i+1)
  sum += a[i]
end
ave = sum/N
for i in 0..a.length-1
  ans1 +=(a[i]-ave).abs
end
for i in 0..a.length-1
  ans2 += (a[i]-(ave+1)).abs
end
puts [ans1,ans2].min