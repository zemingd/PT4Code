(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

h0 = [*1 .. 9].zip([2, 5, 5, 4, 5, 6, 3, 7, 6]).to_h
fs = As.sort.reverse
ns = fs.map{|f| h0[f]}
h = fs.zip(ns).to_h
dp = Array.new(N + 1, -Float::INFINITY)
dp[0] = 0
(1 .. N).each do |i|
  ns.each{|n| dp[i] = [dp[i], dp[i - n] + 1].max if i - n >= 0}
end
n = N
res = dp[N].times.inject([]) do |r, _|
  f, m = h.find{|f, m| dp[n - m] == dp[n] - 1 && n >= m}
  n -= m
  r << f
end
puts res.join