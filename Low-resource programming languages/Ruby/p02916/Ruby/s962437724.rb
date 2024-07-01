n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
pre = 0
sum = 0
for i in 0..(n-1)
  sum += b[a[i]-1]
  if pre != 0 && pre + 1 == a[i]
    sum += c[pre-1]
  end
  pre = a[i]
end
puts sum