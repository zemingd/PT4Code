gets
p gets.split.map(&:to_i).combination(2).reduce(0){|s,e| s+e[0]*e[1]}