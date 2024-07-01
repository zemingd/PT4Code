n = gets.to_i
ds = gets.split.map(&:to_i).sort!

center = (n + 1) / 2
puts ds[center] - ds[center - 1]
