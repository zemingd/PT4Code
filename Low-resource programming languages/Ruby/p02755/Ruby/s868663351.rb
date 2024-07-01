a, b = gets.chomp.split.map(&:to_i)

a_min = ((100 * a)/8.0).ceil
a_max = ((100 * (a+1))/8.0)
a_max = a_max == a_max.floor ? a_max -1 : a_max
aa = (a_min..a_max).to_a

b_min = ((100 * b)/10.0).ceil
b_max = ((100 * (b+1))/10.0).floor
b_max = b_max == b_max.floor ? b_max -1 : b_max
bb = (b_min..b_max).to_a

c = []
c = aa & bb
if c.empty?
  p -1
else
  p c.min
end
