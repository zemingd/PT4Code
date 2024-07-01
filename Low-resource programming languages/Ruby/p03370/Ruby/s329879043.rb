n, x = gets.split.map(&:to_i)
c = []
for i in 0..n-1
  c << gets.to_i
end

puts n + (x - c.sum)/c.min
