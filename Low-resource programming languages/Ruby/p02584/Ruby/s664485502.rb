X, K, D = gets.split.map(&:to_i).map(&:abs)
k = X / D
if K <= k
  puts (X - K * D).abs
elsif (K - k).odd?
  puts (X - (k + 1) * D).abs
else
  puts (X - k * D).abs
end
