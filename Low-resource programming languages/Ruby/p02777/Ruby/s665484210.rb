s,t=gets.split
a,b=gets.split.map &:to_i
u=gets.chop
s==u ? a-=1 : b-=1
puts [a,b]*?\s