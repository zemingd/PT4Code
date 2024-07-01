D,N=gets.split.map &:to_i
A=3.times.map{|x|200.times.map{|i|i*(100**x)}.select{|i|i.modulo(100**(x+1))!=0}}.sort.uniq
p A[D][N-1]