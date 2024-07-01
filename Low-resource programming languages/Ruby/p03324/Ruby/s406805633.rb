D,N=gets.split.map &:to_i
A=Array.new(3)
A[0]=(1..N).to_a
A[1]=(1...1000).each.map{|i|i*100}.select{|i|i.modulo(10000)!=0}.map.sort.uniq
A[2]=(1...1000).each.map{|i|i*10000}.map.sort.uniq
p A[D][N-1]