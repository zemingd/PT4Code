a,b,c,k=gets.split.map &:to_i
res=0
res+=a
k-=(a+b)
if k > 0
  if k>c
    res-=c
  elsif k<=c
    res-=k
  end
end
puts res