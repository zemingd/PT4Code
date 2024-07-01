N, K = gets.split.map(&:to_i)
V = gets.split.map(&:to_i)

l_sum = Array.new(N + 1, 0)
1.upto(N - 1) do |i|
  l_sum[i] = l_sum[i-1] + V[i - 1]
end

r_sum = Array.new(N + 1, 0)
(N-1).downto(0) do |i|
  r_sum[i] = r_sum[i+1] + V[i]
end

ans = 0
0.upto(K) do |cur_l|
  l_vol_max = 0
  cur_l.downto(0) do |l|
    sl = cur_l - l
    vol = l_sum[l] - V[0, l].sort[0, sl].inject(:+).to_i
    l_vol_max = vol if vol > l_vol_max
  end

  r_vol_max = 0
  cur_r = K - cur_l
  cur_r.downto(0) do |r|
    sr = cur_r - r
    vol = r_sum[N - r] - V.last(r).sort[0, sr].inject(:+).to_i
    r_vol_max = vol if vol > r_vol_max
  end

  vol = l_vol_max + r_vol_max
  ans = vol if vol > ans
end

puts ans