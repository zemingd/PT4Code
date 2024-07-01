n, m = gets.split.map(&:to_i)
puts m.times.map{|i| [i, gets.split.map(&:to_i)]}.group_by{|x,(y,z)| y}.map{|k,v| v.sort_by{|x,(y,z)|z}.each_with_index.map{|(x,(y,z)),i| [x, '%06d%06d' % [y, i+1]]}}.flatten(1).sort.map{|x,y|y}
