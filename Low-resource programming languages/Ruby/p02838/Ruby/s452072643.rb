line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=0
b = line[0][0].to_i
for i in 0..b-2
	for j in i+1..b-1
      a += line[1][i].to_i^line[1][j].to_i
    end
end
  
p a % (10**9+7)