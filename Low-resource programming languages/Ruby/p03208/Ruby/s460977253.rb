h=[]
h_dis=[]
n,k=gets.split.map(&:to_i)
n.times{h << gets.to_i}
h.sort!
(n-1).times{|i|
  h_dis[i]=h[i+1]-h[i]
}
min=0
(n-2).times{|j|
  sum=h_dis[j..j+k-2].inject(:+)
  if j==0 then min=sum elsif sum<min then min=sum end
}
puts min
