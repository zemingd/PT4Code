require 'set'
lines = readlines.map{|line| line.split(' ').map(&:to_i)}
x=lines[0][0]
a=lines[1]
b=1
c=Set.new
for i in 0..x-1
  d=c.add?(a[i])
  if d==nil then
    b=0
    break
  end
end
if b==1 then
  puts 'YES'
else
  puts 'NO'
end