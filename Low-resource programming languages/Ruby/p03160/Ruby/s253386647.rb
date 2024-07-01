require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

def min(a, b)
  return a < b ? a : b
end

n, hlist = gets_n_and_i_list
INF = Float::INFINITY

# DP 配列全体を「DP の種類に応じた初期値」で初期化
dp = Array.new(n, INF)

# 初期条件を入力
dp[0] = 0

# 配るDP
0.upto(n-1) do |i|
  if i + 1 < n
    diff1 = (hlist[i + 1] - hlist[i]).abs + dp[i]
    dp[i + 1] = min(diff1, dp[i+1])
  end

  if i + 2 < n
    diff2 = (hlist[i + 2] - hlist[i]).abs + dp[i]
    dp[i + 2] = min(diff2, dp[i+2])
  end

end

puts dp.last