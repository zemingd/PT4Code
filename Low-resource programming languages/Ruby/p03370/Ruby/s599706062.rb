N,X=gets.split.map &:to_i
M=N.times.map{gets.to_i}
x=X-M.inject(:+)
p N+x/M.min
