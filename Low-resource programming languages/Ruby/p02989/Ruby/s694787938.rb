n = gets.to_i
ds = gets.split(' ').map(&:to_i).sort
p ds[n / 2] - ds[n / 2 - 1]