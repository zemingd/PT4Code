A, B, C, K = gets.chomp.split(' ').map(&:to_i)

if (A >= K)
  p K
  return
end

if (A + B >= K)
  p A
  return
end

p A - (K - (A + B))