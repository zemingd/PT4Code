x = gets.split(" ").map(&:to_i)
a,b = [],[]
[*1..12].map{|i|i.odd? ? a << i : b << i}
b.shift
puts (x & a).size == 2 || (x & b).size == 2 ? :Yes : :No 