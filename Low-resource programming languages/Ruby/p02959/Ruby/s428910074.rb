n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
res = 0
(0...n).each do |i|
  d = [a[i], b[i]].min
  res += d
  b[i] -= d
  res += [a[i + 1], b[i]].min if b[i] > 0
end
puts res