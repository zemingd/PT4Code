=begin
N
d1 ... dn
=end

n = gets.chomp.to_i
ds = gets.chomp.split(" ").map(&:to_i)

ds.sort!

l = ds[n/2-1]
r = ds[n/2]

puts(r - l)
