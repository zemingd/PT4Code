gets
a=gets.split.map &:to_i
b=a.sort
s=0
b.map{|i|s+=d=a.index(i);a.delete_at d}
puts b*" ",s