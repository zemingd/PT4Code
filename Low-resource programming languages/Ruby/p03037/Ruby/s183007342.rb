N, M = gets.split.map(&:to_i)
l = Array.new(M)
r = Array.new(M)
M.times do |i|
  l[i], r[i] = gets.split.map(&:to_i)
end
puts r.min - l.max + 1