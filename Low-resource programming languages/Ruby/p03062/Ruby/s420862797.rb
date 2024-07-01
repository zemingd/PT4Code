N = gets.chomp.to_i
A = gets.split

minus = 0

a = A[0].to_i
if a <= 0
  a *= (-1)
  minus += 1
end
minabs = a
sum = a

for x in 1...N
  a = A[x].to_i
  if a <= 1
    a *= (-1)
    minus += 1
  end
  if a < minabs
    minabs = a
  end
  sum += a
end

if minus % 2 == 1
  sum -= minabs * 2
end

puts sum