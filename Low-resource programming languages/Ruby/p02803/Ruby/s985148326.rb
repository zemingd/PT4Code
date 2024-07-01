lines = readlines.map{|line| line.split(' ')}
a=0
for i in 1..lines[0][0].to_i
  a=a+lines[i][0].count("#")
end
if a>=1 then
  puts lines[0][0].to_i+lines[0][1].to_i-2+(a-lines[0][0]+1)*2
else
  puts lines[0][0].to_i+lines[0][1].to_i-2
end