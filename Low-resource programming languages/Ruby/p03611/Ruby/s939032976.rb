gets;puts [gets.split.map(&:to_i).group_by{ |e| e }.sort.map{ |e| e[1].length}, 0, 0].flatten.each_cons(3).map{ |a, b, c| a+b+c }.max
