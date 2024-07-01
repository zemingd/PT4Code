n, k = gets.split.map &:to_i
h    = gets.split.map &:to_i
# DP 配列全体を「DP の種類に応じた初期値」で初期化
dp    = Array.new(n) { 1000000000000 }
dp[0] = 0
#ループを回す
for i in 1 .. n - 1
  for j in 0 .. k - 1
      dp[i] = [dp[i - j - 1] + (h[i - j - 1] - h[i]).abs , dp[i]].min if i > j
  end
end
# テーブルから解を得て出力
puts dp[-1]