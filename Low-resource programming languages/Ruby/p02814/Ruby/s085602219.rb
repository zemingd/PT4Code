lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=lines[1].uniq.sort
b=1
for i in a
  b=b*i/2
end
if lines[0][1]/b/2>0 then
  puts lines[0][1]/b/2+1
else
  puts 0
end