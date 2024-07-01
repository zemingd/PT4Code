i=gets.to_i
a=gets.split.map(&:to_i).sort
e=[]
a[i]==a[i-1]&&e<<a[i-=1]while(i-=1)>0
p e[2]?e[0]*e[1]:0