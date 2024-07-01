N,k=gets.split.map &:to_i
s=[0]*(10**5+1)
N.times do
  a,b=gets.split.map &:to_i
  s[a]+=b
end
s.size.times do |i|
  k-=s[i]
  next if 0<k
  p i
  break
end
