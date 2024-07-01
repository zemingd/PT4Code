n=gets.to_i
btn=[0]+(1..n).map{gets.to_i}
used=[false,true]
cnt=0
now=1

while now!=2
  now=btn[now]
  break if used[now]
  cnt+=1
end

p now!=2?-1:cnt