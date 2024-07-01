a,b = gets.split.map(&:to_i)
c= [a,b].max*2-1
c+=1 if a==b
puts c

