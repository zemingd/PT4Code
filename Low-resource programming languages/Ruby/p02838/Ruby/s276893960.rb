line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=0
for i in 0..line[1].length-1
	for j in 0..i
      if i != j then
        a += line[1][i].to_i^line[1][j].to_i
      end
    end
end
  
p a % (10**9+7)