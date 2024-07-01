D, N = gets.split.map(&:to_i)
ans = if D == 0
  N
else
  100 ** D * N
end
puts ans
