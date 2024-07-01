n,d=gets.split.map(&:to_i)
x=$<.map{|s|s.split.map &:to_i}
a=(0...n).to_a
r = a.combination(2).map {|x1,x2| x[x1].map.with_index{|m,i| (m - x[x2][i])**2 }.inject(&:+) }
p r.map {|m| m**(1/2.0)}.select {|s| s.to_i == s}.size
