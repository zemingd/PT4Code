(N, M), As = readlines.map{|l| l.split.map(&:to_i)}
H = [*1 .. 9].zip([2, 5, 5, 4, 5, 6, 3, 7, 6]).reverse.to_h

hs = H.select{|k, v| As.member?(k)}.invert
ks, vs = hs.keys, hs.values
m = ks.size
dp = Array.new(N + 1, -1E9)
dp[0] = 0
(1 .. N).each do |i|
  ks.each{|k| dp[i] = [dp[i], dp[i - k] + 1].max if i - k >= 0}
end
n = N
res = dp[N].times.inject("") do |r, _|
  i = (0 ... m).find{|j| dp[n - ks[j]] == dp[n] - 1}
  n -= ks[i]
  r += vs[i].to_s
end
puts res