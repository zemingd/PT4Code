n, m = gets.chomp.split.map(&:to_i)
l = []
r = []
m.times do |i|
  l[i], r[i] = gets.chomp.split.map(&:to_i)
end

p r.min - l.max + 1
