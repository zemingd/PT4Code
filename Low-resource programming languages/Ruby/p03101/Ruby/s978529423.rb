d, e = readlines.map{|i| i.split.map(&:to_i)}
p (d[0] - e[0]) * (d[1] - e[1])