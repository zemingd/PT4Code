D, N = gets.split.map(&:to_i)
ans = if D == 0
  N
elsif N == 100
  100 ** D * (N + 1)
else
  100 ** D * N
end
puts ans
