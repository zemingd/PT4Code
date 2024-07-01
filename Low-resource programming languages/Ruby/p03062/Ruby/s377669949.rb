N = gets.chomp.to_i
A = gets.split

a = []
minus = 0

a[0] = A[0].to_i
if a[0] <= 0
  a[0] *= (-1)
  minus += 1
end
minabs = a[0]
sum = a[0]

for x in 1...N
  a[x] = A[x].to_i
  if a[x] <= 1
    a[x] *= (-1)
    minus += 1
  end
  if a[x] < minabs
    minabs = a[x]
  end
  sum += a[x]
end

if minus % 2 == 1
  sum -= minabs * 2
end

puts sum