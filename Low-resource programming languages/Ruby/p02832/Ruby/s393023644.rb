n,*a=gets(p).split.map &:to_i
k,x=0,1
a.map{|i|i==x ? x+=1:k+=1}
puts k>=0&&x>1?k:-1