def max(a, b)
  a > b ? a : b
end
N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

rui = Array.new(N, 0)
N.times do |i|
  rui[i] += rui[i-1] + (1.0 + P[i]) / 2
end
rui.unshift(0)

ans = 0
K.upto(N) do |i|
  ans = max(ans, rui[i] - rui[i-K])
end
puts ans