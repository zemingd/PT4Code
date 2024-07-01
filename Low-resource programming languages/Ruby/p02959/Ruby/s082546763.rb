n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
b = gets.chop.split.map(&:to_i)

ans=0


for i in 0..n-1 do

  ans += [a[i], b[i]].min
  b[i] = b[i] - [a[i], b[i]].min

  ans += [a[i+1], b[i]].min

end

print ans
