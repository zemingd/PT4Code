(N,M,C)=gets.split.map(&:to_i)
B=gets.split.map(&:to_i)
p ARGF.map{|s|s.split.map(&:to_i)}.select{|a| a.zip(B).sum{|l,r|l*r} > -C }.size