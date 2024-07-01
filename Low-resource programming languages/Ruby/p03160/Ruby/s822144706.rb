require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

def min(a, b)
  return a < b ? a : b
end

def max(a, b)
  return a > b ? a : b
end

N, h_list = gets_n_and_i_list      
INF = Float::INFINITY

dp = Array.new(N, INF)
dp[0] = 0
dp[1] = (h_list[1] - h_list[0]).abs

1.upto(N-2) do |i|
  n1 = (h_list[i + 1] - h_list[i]).abs + dp[i]
  n2 = (h_list[i + 1] - h_list[i - 1]).abs + dp[i - 1]
  dp[i + 1] = min(n1, n2)
end

puts dp.last