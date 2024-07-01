n=gets.to_i
vs=gets.split.map(&:to_i)
ans=0
odds=[0]*100001
evens=[0]*100001

0.step(n-2,2) do |i|
  odds[vs[i]]+=1
  evens[vs[i+1]]+=1
end

o1=odds.index(odds.max)
e1=evens.index(evens.max)
omax=odds.max
emax=evens.max

if o1==e1
  odds[o1]=0
  evens[e1]=0
  if evens.max+omax>odds.max+emax
    emax=evens.max
  else
    omax=odds.max
  end
end
puts n-omax-emax
