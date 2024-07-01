line = gets.split(' ').map(&:to_i)

N = line[0]
L = line[1]

taste = []
for i in 1..N do
  taste.push(L+i-1)
end

def abs(x)
  if x > 0 then
    return x
  else
    return -x
  end
end
  
min_id = 0
min_ad = 10000000000000000
for i in 1..N do
  if abs(taste[i-1]) < min_ad then
    min_ad = abs(taste[i-1])
    min_id = i
  end
end
  
ans = 0
for i in 1..N do
  ans += taste[i-1]
end
print ans - taste[min_id-1]