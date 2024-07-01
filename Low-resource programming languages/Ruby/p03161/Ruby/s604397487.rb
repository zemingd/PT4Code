require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
h_list = gets_i_list

dp = Array.new(N, Float::INFINITY)
dp[0] = 0

(1...N).each do |i|
  # min = [] で min.min すると LTE
  min = Float::INFINITY
  k = i - K
  k = 0 if k < 0
  k.upto(i - 1) do |j|
    s = (h_list[i] - h_list[j]).abs + dp[j]
    min = min < s ? min : s
  end
  dp[i] = min
end

puts dp.last

# LTEになる
# INF = 10**12
# dp = Array.new(N, Float::INFINITY)
# dp[0] = 0
# 
# (N-1).times do |i|
#   k = K < N - i - 1 ? K : N - i - 1
#   1.upto(k).each do |j|
#     s1 = dp[i] + (h_list[i] - h_list[i + j]).abs
#     # dp[i + k] = [dp[i + k], s1].min 
#     dp[i + j] = dp[i + j] < s1 ? dp[i + j] : s1
#   end
# end
# puts dp.last
