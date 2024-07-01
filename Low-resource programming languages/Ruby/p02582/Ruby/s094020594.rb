s=gets.chomp.split
m=0
t=0
for i in s
  if i=='R'
    t+=1
  else
    m=[m,t].max
    t=0
  end
end
m=[m,t].max
puts m