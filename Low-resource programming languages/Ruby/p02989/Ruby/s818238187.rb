N = gets.chomp.to_i
D = gets.chomp.split.map(&:to_i)

ds = D.sort
count = ds[D.size/2] - ds[D.size/2-1]
puts count
