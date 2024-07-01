NM,A = [0,1].map {gets.split.map &:to_i}
N,M = NM
A.map!{|e| e/2}.uniq!
l = A.inject {|s,i| s=s.lcm(i); s < M*2 && s.odd? ? s : 0}
p [M,l]
p l>0 ? (M+l)/l/2 : 0