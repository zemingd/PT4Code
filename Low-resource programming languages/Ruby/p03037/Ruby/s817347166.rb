n, m = gets.split.map &:to_i
lmax = 0
rmin = n
m.times do |i|
  l, r = gets.split.map &:to_i
  lmax = l > lmax ? l : lmax
  rmin = rmin > r ? r : rmin
end

puts rmin - lmax + 1