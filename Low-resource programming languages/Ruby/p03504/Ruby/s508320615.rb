n,c=gets.split.map &:to_i
d=$<.map{|l|l.split.map(&:to_i)} #配列の配列(整数)
d=d.transpose
h=Hash.new 0
n.times{|i|h[d[0][i]-0.5]=1;h[d[1][i]]=-1}
h=h.sort.to_a
#p h
sum=0;m=0
for w in 0...n
sum+=h[w][1]
m=sum if sum>m
end
p m