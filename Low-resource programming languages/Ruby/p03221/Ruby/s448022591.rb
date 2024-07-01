n,m=gets.split()
n=n.to_i
m=m.to_i
p=[]
y=[]
y_so=[]
ans=[]
cou=1
b_num=0
m.times do |i|
  p[i],y[i]=gets.split()
  p[i]=p[i].to_i
  y[i]=y[i].to_i
end
y_so=y.sort
m.times do |i|
  num=y.index(y_so[i])
  ans[num]=ans[num].to_s
  (6-p[num].to_s.length).times{ans[num]=ans[num]+"0"}
  ans[num]=ans[num]+p[num].to_s
  if i==0||p[b_num]!=p[num] then
    cou=1
  else 
    cou+=1
  end
  (6-cou.to_s.length).times{ans[num]=ans[num]+"0"}
  ans[num]=ans[num]+cou.to_s
  b_num=num
end
m.times do |i|
  puts ans[i]
end