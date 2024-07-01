N, K = gets.split.map(&:to_i)

prob = 0.0
1.upto(N) do |i|
  if K <= i
    prob += 1.0 / N
  else
    prob += (1.0 / N) * (0.5 ** Math.log2(K / i.to_f).ceil)
  end
end

puts prob
