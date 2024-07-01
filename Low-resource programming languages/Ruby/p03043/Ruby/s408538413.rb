N, K = gets.chomp.split().map(&:to_i)

win_prob = 0.0
for point in 1..N do
  if point >= K
    win_prob += 1.0 / N
    next
  end
  
  t = 1
  while point * 2 ** t < K
    t += 1
  end
  
  win_prob += (1.0 / N) * (1.0 / (2 ** t))
end

puts win_prob
