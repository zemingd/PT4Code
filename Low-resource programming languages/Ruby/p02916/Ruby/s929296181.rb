lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a=0
b=0
for i in 0..lines[0][0]-1
  a=a+lines[2][lines[1][i]-1]
  b=lines[1][i]-1
end
a=a+lines[3][b-1]
puts a