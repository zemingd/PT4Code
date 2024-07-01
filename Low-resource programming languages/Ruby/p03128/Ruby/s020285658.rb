(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

h = [*1 .. 9].zip([2, 5, 5, 4, 5, 6, 3, 7, 6]).select{|f, n| As.member?(f)}.to_h
fs = h.keys.sort.reverse
ns = fs.map{|f| h[f]}
dp = Array.new(N + 1, -Float::INFINITY)
dp[0] = 0
(1 .. N).each do |i|
  ns.each{|n| dp[i] = [dp[i], dp[i - n] + 1].max if i - n >= 0}
end
n = N
res = dp[N].times.inject("") do |r, _|
  f = fs.find{|x| dp[n - h[x]] == dp[n] - 1}
  n -= h[f]
  r + f.to_s
end
puts res