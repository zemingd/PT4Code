NM,A = [0,1].map {gets.split.map &:to_i}
N,M = NM
A.map!{|e| e/2}.uniq!
m = A.inject {|s,i| s=s.lcm(i); (s<=M+s && A[0][0]==i[0]) ? s : 0}
p m>0 ? (M+m)/m/2 : 0