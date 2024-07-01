n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = 0
for i in 0..(n-1)
  if a[i] >= b[i]
    sum += b[i]
    a[i] -= b[i]
  else
    if a[i] + a[i+1] < b[i]
      sum += (a[i] + a[i+1])
      a[i] = a[i+1] = 0
    else
      sum += b[i]
      a[i+1] -= (b[i] - a[i])
      a[i] = 0
    end
  end
end
puts sum
