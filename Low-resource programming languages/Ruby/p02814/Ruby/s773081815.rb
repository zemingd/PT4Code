NM,A = [0,1].map {gets.split.map &:to_i}
N,M = NM
A.sort!.reverse!.map!{|e| e/2}.uniq!
l = A.inject {|s,i| (s=s.lcm(i)) > M*2 ? 0 : s}
p l>0 ? (M+l*2)/l/2 : 0