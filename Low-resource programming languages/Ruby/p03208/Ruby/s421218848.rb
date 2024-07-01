n,k=gets.split.map(&:to_i)
h=n.times.map{gets.to_i}.sort
min=0
(n-k+1).times{|j|
  sum=h[j+k-1]-h[j]
  if j==0 then min=sum elsif sum<min then min=sum end
}
puts min
