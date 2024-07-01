lines = readlines.map{|line| line.split(' ').map(&:to_i)}
b=lines[1].map{|e|e.to_i/2}.inject(:lcm)
a=[]
for i in 0..lines[0][0]-1
  a[i]=0
  while lines[1][i]%2==0 do
    lines[1][i]=lines[1][i]/2
    a[i]=a[i]+1
  end
end
a.delete(a[0])
if a==[] then
  if lines[0][1]>=b then
    if lines[0][1]/b%2==0 then
      puts lines[0][1]/b/2
    else
      puts lines[0][1]/b/2+1
    end
  else
    puts 0
  end
else
  puts 0
end