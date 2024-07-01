N,M=gets.split.map &:to_i
a=M.times.flat_map{gets.split.map &:to_i}
N.times{|i|p a.count(i+1)}