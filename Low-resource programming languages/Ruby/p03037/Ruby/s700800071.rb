n, m = gets.split.map(&:to_i)
l, r = m.times.map{gets.split.map(&:to_i)}.transpose
min = 1
max = n
for i in 0..(m-1)
  min = l[i] if min < l[i]
  max = r[i] if max > r[i]
end
puts max - min + 1