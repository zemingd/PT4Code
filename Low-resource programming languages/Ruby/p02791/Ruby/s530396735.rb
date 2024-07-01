lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=0
b=[]
for i in 0..lines[0][0]-1
  f=0
  b.push(lines[1][i])
  min=lines[0][0]-1
  for k in b
    min = min < k ? min : k
  end
  if min>=lines[1][i] then
    a=a+1
  end
end
puts a