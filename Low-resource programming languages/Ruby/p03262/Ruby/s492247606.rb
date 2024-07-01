N,X = gets.split.map(&:to_i)
lst = gets.split.map(&:to_i)
for i in 0..N-1 do
  lst[i]-=X
end
g=0
for i in 0..N-1 do
  g=g.gcd(lst[i])
end
print(g)