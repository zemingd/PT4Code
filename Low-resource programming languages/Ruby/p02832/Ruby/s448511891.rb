n=gets.to_i
a=gets.split.map &:to_i
a_size=a.size
i=0
k=0
s=0
while !a.empty?
  break if a[0]==1 && a==a.sort.uniq
  if a[i] != i+1
    a.delete_at(i)
    s+=1
    next
  end
  i+=1
end
puts s===a_size ? -1 : s