N, M = gets.split.map(&:to_i)
Ss = M.times.map{gets.split.drop(1).map(&:to_i)}
Ps = gets.split.map(&:to_i)

require 'matrix'

a = Matrix[*Ss.map{|s| s.each_with_object([0]*N){|i, o| o[i - 1] = 1}}]
b = Matrix.hstack(a, Matrix.column_vector(Ps))
puts (r = a.rank) == b.rank ? 2**(N - r) : 0