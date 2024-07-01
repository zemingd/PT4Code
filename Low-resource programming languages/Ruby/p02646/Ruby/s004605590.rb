a,v=gets.split.map &:to_i
b,w=gets.split.map &:to_i
t=gets.to_i
a1=a+t*v
b1=b+t*w
puts a1>=b1 ? 'YES' : 'NO'