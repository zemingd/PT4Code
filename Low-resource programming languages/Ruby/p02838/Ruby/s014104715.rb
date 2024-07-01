line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=0
for i in 0..line[1].length-2
	for j in i+1..line[1].length-1
      a += line[1][i].to_i^line[1][j].to_i
    end
end
  
p a % (10**9+7)