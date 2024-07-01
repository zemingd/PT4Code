n, x = gets.chomp.split.map(&:to_i)

min_m = Float::INFINITY
n.times do |i|
  m = gets.chomp.to_i
  x-=m
  min_m = [min_m, m].min
end

puts n + x/min_m