N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
a = A.group_by(&:itself).map{ |k, v| v.count }.sort

if K>=a.size
  puts 0
else
  c = a[0, a.size-K]
  puts c.inject(:+)
end
