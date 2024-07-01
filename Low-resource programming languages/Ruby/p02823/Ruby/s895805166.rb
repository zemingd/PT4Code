line = gets.split(' ').map(&:to_i)
a=line[1]
b=line[2]
c=0
if (a-b)%2==0 then
  p ((a-b).abs)/2
elsif (a-b)%2!=0 then
  p [[a,b].max-1,line[0]-[a,b].min].min
end