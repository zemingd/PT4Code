N, M = gets.split.map(&:to_i)
A = {}
(1..M).each do |i|
  a, b = gets.split.map(&:to_i)
  A[a] += 1
  A[b] += 1
end
(1..N).each do |i|
  puts A[i]
end
