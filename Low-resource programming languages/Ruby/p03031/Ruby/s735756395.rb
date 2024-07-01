(n,m)=gets.split.map(&:to_i);

a = ARGF.map {|s|s.split.map(&:to_i)}
s = a.take(a.size-1).map{|a|a.drop(1)}
p = a[-1] 
r = [0,1].product(*([[0,1]]*(n-1))).to_a.select {|x| (0...m).all?{|i| (s[i].map{|k|x[k-1]}.reduce(:+) % 2) == p[i] } }

p r.size