N,M=gets.split.map(&:to_i)
n=[0]*(M+1)
N.times.map{gets.split.map(&:to_i)[1..-1].each{|a|n[a]+=1}}
p n.count{|i|i==N}