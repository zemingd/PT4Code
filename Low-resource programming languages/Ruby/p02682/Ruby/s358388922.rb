A, B, C, K = gets.split.map(&:to_i)

if A + B >= K
  puts [A, K].min
else
  D = K - (A + B)
  puts A - D
end
