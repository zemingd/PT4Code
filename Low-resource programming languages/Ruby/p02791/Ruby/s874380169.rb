lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=0
for i in 0..lines[0][0]-1
  f=1
  for j in 0..i
    if lines[1][j]<lines[1][i] then
      f=0
    end
  end
  if f==1 then
    a=a+1
  end
end
puts a