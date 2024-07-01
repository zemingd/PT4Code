def max(a, b)
  a > b ? a : b
end
N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

#N = 200000
#K = 100000
#P = N.times.map{rand(1..1000)}

rui = Array.new(N, 0)
N.times do |i|
  rui[i] += rui[i-1] + (1.0 + P[i]) / 2
end
ans = 0
(N-K).times do |i|
  ans = max(ans, rui[i+K] - rui[i])
end
puts ans