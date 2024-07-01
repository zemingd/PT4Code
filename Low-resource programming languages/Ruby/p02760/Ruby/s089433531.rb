lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=[]
b=0
for i in 0..2
	a.push(lines[i])
end
for i in 0..2
  	a.push([lines[i][0],lines[i][1],lines[i][2]])
end
a.push([lines[0][0],lines[1][1],lines[2][2]])
a.push([lines[0][2],lines[1][1],lines[2][0]])

for i in 0..7
  for j in 3..lines[3][0]+3
    if a[i].index(lines[j][0])!=nil then
    	a[i].delete_at(a[i].index(lines[j][0]))
    end
  end
  if a[i].length==0 then
    b=1
    puts "Yes"
    break
  end
end
if b==0 then
  puts "No"
end