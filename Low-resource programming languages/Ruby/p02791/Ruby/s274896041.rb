lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=0
for i in 0..lines[0][0]-1
  f=0
  for j in 0..i
    if lines[1][i]>lines[1][j] then
      f=1
      break
    end
  end
  if f==0 then
    a=a+1
  else
    a=a
  end
end
puts a