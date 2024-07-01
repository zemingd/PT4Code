N, K = gets.split.map(&:to_i)
ans = K * ((K - 1) ** (N - 1))
puts ans

