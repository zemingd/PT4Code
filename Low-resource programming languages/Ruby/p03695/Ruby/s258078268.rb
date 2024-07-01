n = gets.to_i
as = gets.split.map(&:to_i)
rs = [3200, 2800, 2400, 2000, 1600, 1200, 800, 400, 1]
cs = Array.new(9, 0)
as.each do |a|
  i = rs.bsearch_index { |r| a >= r }
  cs[i] += 1
end
free = cs.shift
sum = cs.count { |c| c > 0 }
print sum == 0 ? 1 : sum
print " "
puts [sum + free, 8].min