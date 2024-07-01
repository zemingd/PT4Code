i = Array.new
while line = $stdin.gets
i << line.chomp.split
end
k=0
l=0
i.count.times{|n|
if i[n] != n%2 then
    k +=1
end
if i[n] != (n+1)%2 then
    l +=1
end
}
 
if k >= l then
    print l
else
    print k
end