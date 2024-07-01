n = gets.to_i
ds = gets.split(" ").map(&:to_i)
ds=ds.sort
ds.unshift(0)
puts ds[(n/2)+1]-ds[n/2]
