n = gets.to_i
ds = gets.split.map(&:to_i).sort

lh = ds[n/2-1]
rh = ds[n/2]

puts rh - lh