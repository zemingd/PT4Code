N, K = gets.split.map(&:to_i)
ans = K

if 1 < N
  puts K * (K - 1) ** (N - 1)
else
  puts ans
end