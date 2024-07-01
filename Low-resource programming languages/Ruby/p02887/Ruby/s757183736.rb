line = readlines.map(&:chomp)
l = line[1].length-1
a = 0
for i in 0..l-1
  if line[1][i] != line[1][i+1] then
    a = a + 1 
  end
end
p a + 1