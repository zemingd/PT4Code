h=[]
h_dis=[]
n,k=gets.split.map(&:to_i)
n.times{h << gets.to_i}
h.sort!
(n-1).times{|i|
  h_dis[i]=h[i+1]-h[i]
}
min=0
for num in 0..k-2
  min+=h[num+1]-h[num]
end
for j in 1..n-k do
  sum=0
  for num in j..j+k-2
    sum+=h[num+1]-h[num]
    if min<sum then break end
  end
  if j==0 then min=sum elsif sum<min then min=sum end
end
puts min
