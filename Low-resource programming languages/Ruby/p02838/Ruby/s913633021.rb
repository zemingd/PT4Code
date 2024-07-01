line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=0
b = line[1].combination(2).to_a
for i in 0..b.length-1
  a += b[i][0].to_i^b[i][1].to_i
end
  
p a % (10**9+7)