require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
h_list = gets_i_list

INF = 10 ** 9 + 7

dp = Array.new(N, INF)
dp[0] = 0

(0...N).each do |i|
  (1..K).each do |k|
    if i + k < N
      s1 = dp[i] + (h_list[i] - h_list[i + k]).abs
      # dp[i + k] = [dp[i + k], s1].min 
      dp[i + k] = dp[i + k] < s1 ? dp[i + k] : s1
    else
      break
    end
  end
end
puts dp.last
