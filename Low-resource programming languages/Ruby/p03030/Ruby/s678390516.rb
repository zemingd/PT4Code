n = gets.chomp.to_i
list = n.times.map.with_index(1) { |_, i|  x = gets.chomp.split; [i, x[0], x[1].to_i] }

list.sort_by { |x| [x[1], -1 * x[2]] }.each { |x| puts x[0] }
