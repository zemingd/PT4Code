N, W = gets.split.map(&:to_i)
ws = [0]
vs = [0]

N.times do
  w, v = gets.split.map(&:to_i)
  ws << w
  vs << v
end

dp_old = [0] * (W + 1)

1.upto(N) do |i|
  dp = dp_old.clone

  ws[i].upto(W) do |w_max|
    dp[w_max] = [dp_old[w_max], dp_old[w_max - ws[i]] + vs[i]].max
  end

  dp_old = dp
end

puts dp_old.last
