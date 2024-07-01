gets
t,a=gets.split.map(&:to_i)
h[]=gets.split.map(&:to_i)
cnt=0
ans=-1
dif=1000000.0
for i in h do
  cnt+=1
  if dif<(a-t-i.to_f*0.006).abs then
    dif=(a-t-i.to_f*0.006).abs
    ans=cnt
  end
 end
 p ans