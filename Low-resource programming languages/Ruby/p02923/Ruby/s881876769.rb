n=gets.to_i
h=gets.split.map &:to_i
c1=0
c2=0
(n-1).times do |i|
  if h[i]>=h[i+1]
    c1+=1
    c2=c1 if i==n-2
  else
    c2=c1 if c2<c1
    c1=0
  end
end
puts c2
