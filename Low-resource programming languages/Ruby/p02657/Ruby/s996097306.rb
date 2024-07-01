line = readlines
len = line.length
i = 0
k=1
while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end
a=line[1]
n=1
a.length.times do|m|
  if a[m]==0
    n=0
    k=a.length
  end
  
   loop
      n=n*a[m].to_i
      if n>10**18
        n=-1
      k=a.length  
      end
      k+=1

    until k=a.length
  end
end

p n