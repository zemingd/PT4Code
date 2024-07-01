n=gets.to_i
a=[0]
n.times{|i|a<<gets.to_i}
#p -1 if not n.include?(2)
l=1
c=0
while
  c+=1
  next=a[l]
  a[l]=-1
  if next==-1
    p -1;exit
  elsif next==2
    p c;exit
  end
end
