N, K = gets.chomp.split().map(&:to_i)

win_prob = []
for point in 1..N do
  t = 0
  k = K / point
  while k >= 1 do
    t += 1
    k /= 2
  end
  win_prob << 0.5 ** t / N
end

print(win_prob.sum)
