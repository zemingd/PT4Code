n,c=gets.split.map &:to_i
d=$<.map{|l|l.split.map(&:to_i)} #配列の配列(整数)
d=d.transpose
a=[]
for i in 0...n
a[2*i]=[d[0][i]-0.5,1];a[2*i+1]=[d[1][i],-1]
end
a=a.sort
sum=0;m=0
for w in 0...n
sum+=a[w][1]
m=sum if sum>m
end
p m