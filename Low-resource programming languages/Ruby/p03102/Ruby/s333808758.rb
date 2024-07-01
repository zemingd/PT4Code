n, m, c = gets.split.map(&:to_i)
ms = gets.split.map(&:to_i)
as = []
n.times do |i|
  as.push(gets.split.map(&:to_i))
end
arr = as.select do |a|
  a.map.with_index {|ai, i| ai * ms[i]}.sum + c > 0
end
puts arr.count
