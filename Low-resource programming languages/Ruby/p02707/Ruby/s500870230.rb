n=gets.to_i
a=gets.split.map &:to_i
b=[0]*n
a.map{|x|b[x-1]+=1}
puts b