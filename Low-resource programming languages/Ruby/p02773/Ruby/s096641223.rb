lines = readlines.map{|line| line.split(' ')}
a=lines[0][0].to_i
b=[]
for i in 1..a
	b.push(lines[i][0])
end
count = Hash.new(0)
b.each do |elem|
  count[elem] += 1
end
c=count.sort_by { |key, value| value }.reverse.to_h

d=c.to_a
for j in 0..d.length-1
  if d[j][1]==c.values.first then
    puts d[j][0]
  else
    break
  end
end