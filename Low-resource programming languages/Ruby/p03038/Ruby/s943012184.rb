N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B,C = readlines.map {|s| s.split.map(&:to_i) }.transpose

m = A.min
M.times do |j|
  next if C[j] <= m
  A.sort!
  B[j].times do |i|
    break if C[j] <= A[i]
    A[i] = C[j]
  end
  m = A[B[j]] if A[B[j]]
  m = C[j] if C[j] < m
end
puts A.inject(:+)