n,m,l=gets.split(' ')
n=n.to_i
m=m.to_i
l=l.to_i

X=Array.new(n){Array.new(m)}
Y=Array.new(m){Array.new(l)}
Z=Array.new(n){Array.new(l)}
for i in 1..n do
    X[i-1]=gets.split(' ').map(&:to_i)
end
for j in 1..m do
    Y[j-1]=gets.split(' ').map(&:to_i)
end

for p in 0..n-1
  for r in 0..l-1
    e=0
    for q in 0..m-1
      e+=X[p][q]*Y[q][r]
    end
    Z[p][r]=e
  end
end

for p in 0..n-1
  for r in 0..l-1
     if r<l-1 then
     printf("%d ", Z[p][r])
     else
     printf("%d\n", Z[p][r])
     end
  end
end