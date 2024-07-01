NM,A = [0,1].map {gets.split.map &:to_i}
N,M = NM
A.map!{|e| e/2}.uniq!
m = A.all? {|i| i[0]==A[0][0]} ? M : 0
m = A.inject {|s,i| s=s.lcm(i); s < m+s ? s : 0}
p m>0 ? (M+m)/m/2 : 0