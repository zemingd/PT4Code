n,C=gets.split.map &:to_i
table=$<.map{|l|l.split.map(&:to_i)}
d=C.times.map {[0]*(2*10**5+2)}
table.each{|s,t,c|
for k in (2*s-1)..(2*t)
  d[c-1][k]=1
end
}
d=d.transpose
m=0
d.each{|e|m=[e.inject(:+),m].max}
p m