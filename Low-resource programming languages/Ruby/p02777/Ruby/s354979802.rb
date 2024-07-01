lines = readlines.map{|line| line.split(' ')}
a=lines[1][0].to_i
b=lines[1][1].to_i
if lines[0][0]==lines[2][0] then
  puts [a-1,b].join(' ')
elsif lines[0][1]==lines[2][0] then
  puts [a,b-1].join(' ')
end