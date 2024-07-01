n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
d = []

n.times do |i|
  a_i = gets.split.map(&:to_i)
  t = a_i.map.with_index {|a, j| a*(b[j])}.sum
  d << i if t + c > 0
end

puts d.sum