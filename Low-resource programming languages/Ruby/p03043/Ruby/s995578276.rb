n, k = gets.split.map(&:to_i)
sum = 0
c = []
j = 1
c[1] = 1
while j < k
  j *= 2
  c[1] *= 2
end
sum += 1

for i in 2..n do
  j = i
  c[i] = 1
  while j < k
    j *= 2
    c[i] *= 2
  end
  sum += c[1] / c[i]
end
puts sum.to_f / (c[1] * n).to_f
