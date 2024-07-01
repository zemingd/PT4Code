N = gets.to_i
ds = gets.split.map(&:to_i)
ds.sort!

puts ds[N/2] - ds[N/2-1]