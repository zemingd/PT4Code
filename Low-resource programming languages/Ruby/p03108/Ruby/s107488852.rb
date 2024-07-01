num_islands, num_bridges = gets.split(' ').map(&:to_i)
bridge_list = (1..num_bridges).map{ gets.split(' ').map(&:to_i) }

groups = (1..num_islands).map{|i| [i] }

n = num_islands
results = [n*(n - 1)/2]
(1..(num_bridges-1)).each do |i|
  a, b = bridge_list[-i]
  ia = groups.find_index{|g| g.include?(a) }
  ib = groups.find_index{|g| g.include?(b) }
  if ia == ib
    results.unshift(results[0])
  else
  	results.unshift(results[0] - groups[ia].length * groups[ib].length)
    b = groups.delete_at(ib)
    groups[ia] += b
  end
end
results.each{|rslt| puts rslt }