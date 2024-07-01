n = gets.to_i
ds = gets.split.map(&:to_i).sort
a = ds[n/2 - 1]
b = ds[n/2]
puts b - a
