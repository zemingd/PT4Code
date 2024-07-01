A, B, C, K = gets.split.map(&:to_i)
if A >= K
  puts K
elsif A + B >= K
  puts A
else
  puts A - (K - (A + B))
end