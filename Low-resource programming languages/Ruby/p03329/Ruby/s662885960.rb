n=eval`dd`
p (0..n).map{|i|s=i.to_s(6)+(n-i).to_s(9);s.sum-s.size*48}.min