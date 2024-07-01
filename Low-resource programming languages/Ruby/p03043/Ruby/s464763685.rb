str1 = gets.split
N,K = str1[0].to_i, str1[1].to_i

a = []
for x in 0...20
  a[x] = 0
end

if N-K+1 >= 0
  a[0] = N-K+1
else
  a[0] = 0
end

b = 2
c = 1
for x in 1...20
  if N >= K/c-1 
    a[x] = (K-1)/c-1 - (K-1)/b + 1
  else
    a[x] = N+1 - ((K-1)/b+1)
  end
  if a[x] < 0
    a[x] = 0
  end
  b = b*2
  c = c*2
end

answer = 0.0
d = 1.0

for x in 0...20
  answer += a[x]*d/(N*1.0)
  d = d*0.5
end

puts answer