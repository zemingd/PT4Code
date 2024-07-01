s=gets.chop.chars.map &:to_i
a,b,i=0,0,0
s.map{|x|i.even?? a+=x: b+=x;i+=1}
n=s.size/2
p [n-a+b,n-b+a].min