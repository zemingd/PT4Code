n=gets.to_i
x=gets.split.map &:to_i
a=x.sort
u=a[n/2]
l=a[n/2-1]
x.each{|e|p e>l ? l:u}