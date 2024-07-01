lines = readlines.map{|line| line.split(' ').map(&:to_f)}
a=lines[0][1]
b=lines[0][0]
c=lines[1]
e=0
f=0
for i in 0..b-a
  d=0
  for j in i..i+a-1
    d=d+c[j]+1
  end
  if e<d then
    e=d
  end
end
puts e/2