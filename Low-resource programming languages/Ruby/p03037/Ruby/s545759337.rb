N, M = gets.split.map(&:to_i)
L = N.times.map{0}
R = N.times.map{0}
M.times do
  l, r = gets.split.map {|c| c.to_i - 1}
  L[l] += 1
  R[r] += 1
end

ans = 0
gates = 0
N.times do |i|
  gates += L[i]
  ans += 1 if gates == M
  gates -= R[i]
end

puts ans