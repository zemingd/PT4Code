gets
a=gets.split
b=a.sort_by &:to_i
s=0
b.map{|i|s+=d=a.index(i);a.delete_at d}
puts b*" ",s