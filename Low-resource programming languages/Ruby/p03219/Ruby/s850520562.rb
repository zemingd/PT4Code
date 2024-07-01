n = gets.to_i
t, a = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
puts t
res = []
n.times do |i|
  res[i] = (a - (t - ary[i] * 0.006)).abs
end

puts res.index(res.min) + 1