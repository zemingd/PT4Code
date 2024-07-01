require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

def min(a,b)
  a, b = a.to_i, b.to_i
  return a < b ? a : b
end

def max(a,b)
  a, b = a.to_i, b.to_i
  return a > b ? a : b
end

N, W = gets_i_list
wv_list = []
N.times do
  wv_list.push gets_i_list
end

dp = Array.new(N + 1).map{Array.new(W + 1, 0)}

N.times do |i|
  1.upto(W) do |w_sum|
    # i 番目の品物を選ぶ場合
    if w_sum >= wv_list[i][0]
      dp[i+1][w_sum] = max(dp[i+1][w_sum], dp[i][w_sum - wv_list[i][0]] + wv_list[i][1])
    end
    # i 番目の品物を選ばない場合
    dp[i+1][w_sum] = max(dp[i+1][w_sum], dp[i][w_sum])
  end
end
puts dp[N][W]