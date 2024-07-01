lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=lines[0][1]
b=lines[0][0]
c=lines[1]
c.push(0)
e=0
x=[0]
for i in 0..b-a
  s=c[i+a]-c[i]
  x.push(s+x.last)
end
puts (x.max+c[0..a-1].inject(:+)+a)/2