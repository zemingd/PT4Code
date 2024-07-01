i = gets.split("").map(&:to_i)
k=0
l=0
(i.count-1).times{|n|
if i[n] != n%2 then
    k +=1
end
  m = n+1
if i[n] != m%2 then
    l +=1
end
}
  
if k > l then
    print l
else
    print k
end