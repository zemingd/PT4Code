n,m = gets.split.map(&:to_i)

a = []
m.times do |i|
  a[i] = gets.split.map(&:to_i)
end

l = []
r = []
m.times do |i|
  l << a[i][0]
  r << a[i][1]
end

lm = l.max
rm = r.min

puts ((rm-lm) >= 0) ? (rm-lm+1) : 0
