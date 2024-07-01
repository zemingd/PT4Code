(a,b,c)=gets.split.map(&:to_i)
n=gets.chomp.to_i
g=[a,b,c]
t=0
while t<n
  f=g.max
  g.sort![2]=f*2
  t+=1
end
puts g.inject(:+)
