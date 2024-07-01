a, b = gets.split(" ").map(&:to_i)
ls = []
rs = []
result = nil
b.times do |i|
  l, r = gets.split(" ").map(&:to_i)
  ls << l
  rs << r
end
l_max = ls.max
r_min = rs.min
puts l_max > r_min ? 0 : (l_max..r_min).size