l=gets.chomp.split.map(&:to_i)
p l
m=l.max
l.delete_at l.index m
n=l.max
l.delete_at l.index n
puts m*10+n+l[0]
