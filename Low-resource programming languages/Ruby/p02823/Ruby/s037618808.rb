line = gets.split(' ').map(&:to_i)
a=line[1]
b=line[2]
c=0
while ((a-b).abs)%2!=0 do
  if line[0]-[a,b].min>=[a,b].max-1 then
    if a!=1 then
      a=a-1
    end
    if b!=1 then
      b=b-1
    end
  else
    if a!=line[0] then
      a=a+1
    end
    if b!=line[0] then
      b=b+1
    end
  end
  c=c+1
end
p c+((a-b).abs)/2