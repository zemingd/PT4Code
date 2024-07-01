require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

def min(a, b)
  return a < b ? a : b
end

N, K = gets_i_list
h_list = gets_i_list

INF = Float::INFINITY
dp = Array.new(N, INF)
dp[0] = 0

(N - 1).times do |i|
  n_min = INF
  
  k = i + 1 - K
  k = 0 if k < 0
  k.upto(i) do |j|
    n = (h_list[i + 1] - h_list[j]).abs + dp[j]
    n_min = min(n_min, n)
  end
  dp[i + 1] = n_min
end
puts dp.last