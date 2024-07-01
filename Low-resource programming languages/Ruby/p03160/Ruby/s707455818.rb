# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a
def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end
INF = 10 ** 6

n = gets.to_i
h = gets.split.map(&:to_i)


dp = [INF]*(n+1)

dp[1] = 0

(1+1).upto(n) do |i|

  dp[i] = chmin(dp[i], dp[i - 1] + (h[i - 1] - h[i - 2]).abs)
  dp[i] = chmin(dp[i], dp[i - 2] + (h[i - 1] - h[i - 3]).abs) if i > 2
end

puts dp[n]


