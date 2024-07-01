n  = gets.to_i
ds = gets.split.map(&:to_i)

ds.sort!
if ds.size.even?
  puts ds[ds.size/2] - ds[ds.size/2 - 1]
else
  puts 0
end