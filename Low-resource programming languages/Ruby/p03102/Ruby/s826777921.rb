n,m,c=gets.split.map &:to_i
b=gets.split.map &:to_i
ans=0
n.times{ans+=1 if (gets.split.map &:to_i).zip(b).map{|n,p| n*p}.inject(:+)+c>0}
p ans