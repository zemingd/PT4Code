lines = readlines.map{|line| line.split(' ')}
a=lines[0]
b=lines[1][0].to_i
for i in 2..b+1 do
  if lines[i][0].to_i == 1 then
    a=a.reverse
  elsif lines[i][0].to_i == 2 then
    if lines[i][1].to_i == 1 then
      a=a.unshift(lines[i][2])
    elsif lines[i][1].to_i == 2 then
      a=a.push(lines[i][2])
    end
  end
end
puts a.join('')