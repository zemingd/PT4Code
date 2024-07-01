n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
c=0
while x>=0 && a!=[]
  x-=a.shift
  c+=1
end
c-=1 if x!=0
p c
