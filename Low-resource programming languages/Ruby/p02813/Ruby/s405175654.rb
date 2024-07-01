_,a,b=$<.map &:split
p~-a.permutation.count{|e|(a<=>e).>b<=>e}