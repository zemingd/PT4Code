n = gets.to_i
a = gets.chomp.split.map(&:to_i)

s = 0
n.times do |i|
  a[i] -= i + 1
  s += a[i]
end

res = 0
n.times do |i|
  res += (a[i] - s / n).abs
end
puts res