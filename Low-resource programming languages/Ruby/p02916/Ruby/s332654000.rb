n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

res = 0

n.times do |i|
  ate = a[i]
  res += b[ate - 1]
  res += c[a[i-1] - 1] if i > 0 and a[i-1] == ate - 1
end

puts res