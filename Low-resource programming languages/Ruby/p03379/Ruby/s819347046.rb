a=gets.to_i
n=gets.split.map(&:to_i)
t=0
h=n
while t<a do
 h=n.chomp
 h.delete_at(t)
 y=h.sort
 puts y[a/2-1]
 t+=1

end
