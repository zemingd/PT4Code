N, M = gets.split.map(&:to_i)
A = {}
for i in 1..M do
  a, b = gets.split.map(&:to_i)
  A[a] += 1
  A[b] += 1
end
for i in 1..N do
  puts A[i]
end
