X, K, D = gets.split.map(&:to_i)

pos = X.abs
if K * D < pos then
  puts pos - K * D
else
  a = pos / D
  pos = pos - D * a
  i = a % 2
  if i == 0
    puts pos
  else
    puts (pos - K).abs
  end
end
