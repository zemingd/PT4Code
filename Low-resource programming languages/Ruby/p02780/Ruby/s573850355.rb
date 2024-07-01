N, K = gets.split(" ").map(&:to_i)
P = gets.split(" ").map(&:to_i)
ans = []
tmp = P[0..(K - 1)].inject(:+)
(N - K).times do |i|
    tmp += P[K + i] - P[i]
    ans << tmp
end
puts (ans.sort[-1] + K) / 2.0