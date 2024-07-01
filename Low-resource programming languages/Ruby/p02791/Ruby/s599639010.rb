lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=0
b=[]
for i in 0..lines[0][0]-1
  f=0
  b.push(lines[1][i])
  if b.min>=lines[1][i] then
    a=a+1
  end
end
puts a