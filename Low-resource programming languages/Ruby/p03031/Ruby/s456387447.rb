N, M = gets.split.map(&:to_i)
Ss = M.times.map{gets.split.drop(1).map(&:to_i)}
Ps = gets.split.map(&:to_i)

require 'matrix'
a = Matrix[*[0, 1].repeated_permutation(N)]
b = Matrix[*Ss.map{|s| s.each_with_object([0]*N){|i, o| o[i - 1] = 1}}]
puts (a*b.t).to_a.map{|v| v.map{|e| e % 2}}.count(Ps)