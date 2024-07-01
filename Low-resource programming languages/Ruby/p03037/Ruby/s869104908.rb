n, m = gets.split().map(&:to_i)
l = Array.new(m)
r = Array.new(m)

m.times do |i|
  l[i], r[i] = gets.split().map(&:to_i)
end

puts r.min - l.max + 1