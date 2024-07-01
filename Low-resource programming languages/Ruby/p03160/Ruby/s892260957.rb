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
dp[1] = (hlist[1] - hlist[0]).abs

def rec(i, dp, hlist)
  # DP の値が更新されていたらそのままリターン
  return dp[i] if dp[i] < INF

  # 足場 0 のコストは 0
  return 0 if i==0

  diff1 = rec(i-1, dp, hlist) + (hlist[i] - hlist[i-1]).abs if i > 0
  diff2 = rec(i-2, dp, hlist) + (hlist[i] - hlist[i-2]).abs if i > 1
  dp[i] = min(diff1, diff2)
  return dp[i]
end

rec(n-1, dp, hlist)

puts dp.last