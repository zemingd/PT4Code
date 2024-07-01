lines = readlines.map{|line| line.split(' ').map(&:to_i)}
a = 0
l = lines[1].length-1
for i in 0..l
  for j in 0..l
    if i != j then
      a = a + lines[1][i]*lines[1][j]
    end
  end
end
puts a/2