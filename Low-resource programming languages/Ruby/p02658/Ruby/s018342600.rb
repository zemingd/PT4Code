
line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=line[1]
n=1
a.length.times do |m|
n=n*a[m].to_i

 
end
 if n>10**18
    n=-1

  end
p n