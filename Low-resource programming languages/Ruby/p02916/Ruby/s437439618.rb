n = gets.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)
sum = 0
for i in 0..n-2
  sum += b[a[i]-1]
  if a[i+1] == a[i]+1
    sum += c[a[i]-1]
  end
end
puts sum + b[a[n-1]-1]