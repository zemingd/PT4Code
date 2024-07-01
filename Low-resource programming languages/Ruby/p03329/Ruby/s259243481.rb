n = gets.rstrip.to_i

# dp    ; 0~n円の引き出しにかかる回数を全て算出する.
# 初期化; 100000より回数がかかることはないので初期値に設定. 0円は0回なので0.
dp = Array.new(n+1, 100000)
dp[0] = 0

(1..n).each do | i |
  # 1円引出でjumpできる先
  dp[i] = dp[i-1] + 1 < dp[i] ? dp[i-1] + 1 : dp[i]

  # 6円(** x), 9円(** y)引出でjumpできる先
  #   j は 6, 9 のどちらかの元の数字を保持. あとで累乗の計算できるように.
  #   k は累乗の結果を確認していく.
  #   jump元がdp配列の0番目以降になるように, i - k >= 0 を条件にする.
  [6, 9].each do | j |
    k = j
    while i - k >= 0
      dp[i] = dp[i-k] + 1 < dp[i] ? dp[i-k] + 1 : dp[i]
      k *= j
    end
  end
end
p dp[-1]