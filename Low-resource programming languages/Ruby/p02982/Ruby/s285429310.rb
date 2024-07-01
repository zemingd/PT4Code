(N, D), *Xs = readlines.map{|l| l.split.map(&:to_i)}

d = ->(i, j){Math.sqrt((0 ... D).map{|d| (Xs[i][d] - Xs[j][d])**2}.inject(:+))}
puts [*0 ... N].combination(2).count{|i, j| d[i, j] == d[i, j].to_i}