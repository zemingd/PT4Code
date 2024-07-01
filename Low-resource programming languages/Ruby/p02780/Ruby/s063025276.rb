lines = readlines.map{|line| line.split(' ').map(&:to_f)}
a=lines[0][1]
b=lines[0][0]
c=lines[1]
e=0
for i in 0..b-a
  d=c[i..i+a-1].inject(:+)
  if e<d+a then
    e=d+a
  end
end
puts e/2