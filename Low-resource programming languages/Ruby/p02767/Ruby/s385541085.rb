lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=lines[0][0]
b=lines[1]
d=[]
for i in 1..100
  c=0
  for j in b
   c=c+(j-i)**2
  end
  d.push(c)
end
puts d.min