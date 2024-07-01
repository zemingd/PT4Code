a,b,k=gets.split.map(&:to_i)
x=[]
s=a+k-1>b ? b : a+k-1
t=b-k+1<a ? 1 : b-k+1
for i in a..s
  x<<i
end
for i in t..b
  x<<i
end
puts x.uniq.sort