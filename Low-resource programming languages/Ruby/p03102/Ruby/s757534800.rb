n, _m, c = gets.split.map(&:to_i)
ms = gets.split.map(&:to_i)
as = []
n.times do |_i|
  as.push(gets.split.map(&:to_i))
end
arr = as.select do |a|
  a.map.with_index {|ai, i| ai * ms[i]}.inject(:+) + c > 0
end
puts arr.count
