N, M = gets.split.map(&:to_i)

readlines.map.with_index(1){|l, i| [i, *l.split.map(&:to_i)]}.sort_by{|i, p, y| y}
  .group_by{|i, p, y| p}.values.flat_map{|a| a.map.with_index(1){|(i, p, y), j| [i, p, j]}}.sort
  .each{|i, p, j| printf "%06d%06d\n", p, j}