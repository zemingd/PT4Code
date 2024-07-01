n=gets.to_i
a=[0]
n.times{|i|a<<gets.to_i}
#p -1 if not n.include?(2)
l=1
c=0
while true do
  c+=1
  x=a[l]
  a[l]=-1
  if x==-1
    p -1;exit
  elsif x==2
    p c;exit
  end
  l=x
end