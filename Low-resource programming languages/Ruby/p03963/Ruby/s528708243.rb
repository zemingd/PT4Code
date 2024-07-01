N, K = gets.split.map(&:to_i)

ans = K
(N - 1).times do
  ans *= (K - 1)
end
p ans