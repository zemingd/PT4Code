n,k=gets.split.map(&:to_i)
c=0
while n>0
  n/=k
  c+=1
end
puts c
