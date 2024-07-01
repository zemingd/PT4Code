n, m, l = gets.split.map(&:to_i)
A = n.times.map{gets.split.map(&:to_i)}
B = m.times.map{gets.split.map(&:to_i)}
n.times{|i| puts l.times.map {|j| m.times.map{|k| A[i][k] * B[k][j]}.inject(&:+)}.join(' ')}
