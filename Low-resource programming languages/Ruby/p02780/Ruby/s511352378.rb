lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=lines[0][1]
b=lines[0][0]
c=lines[1]
c.push(0)
e=0
x=1
for i in 0..b-a
  if x==1 then
    d=c[i..i+a-1].inject(:+)+a
    if e<d then
      e=d
    end
  end
  if c[i]>c[i+a] then
    x=0
  else
    x=1
  end
end
puts e.to_f/2