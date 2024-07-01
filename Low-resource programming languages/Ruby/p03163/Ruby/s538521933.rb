ARG_N, ARG_W = gets.split.map(&:to_i)
ARG_w = Array.new(ARG_N)
ARG_v = Array.new(ARG_N)
ARG_N.times do |i|
  ARG_w[i], ARG_v[i] = gets.split.map(&:to_i)
end

def max a,b
  a > b ? a : b
end

dp = Array.new(ARG_W+1, 0)
ARG_N.times do |i|
  w, v = ARG_w[i], ARG_v[i]
  ndp = Array.new(ARG_W+1, 0)
  dw = ARG_W
  while w <= dw do
    dp[dw] = max(dp[dw], v + dp[dw-w])
    dw-=1
  end
end

puts dp.max